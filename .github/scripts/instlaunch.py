"""
Script that initializes needed cloud components and creates the specified number of VMs.

The script will also create CSV file containing information about each of
the instances, including their label, ID, IP, and optionally password.

To run, you first need to define CloudBridge connection config file at `~/.cloudbrige`.
See http://cloudbridge.cloudve.org/en/latest/topics/setup.html#providing-access-credentials-in-a-cloudbridge-config-file

This script can be run from command-line as follows:
python3 instlaunch.py -n [num instances]

To view all additional optional parameters, run
python3 instlaunch.py -h
"""
## Originally from https://github.com/almahmoud/cloudbridge-demo-loop
import argparse
import os
import random
import string
import subprocess
import time

from cloudbridge.factory import CloudProviderFactory, ProviderList
from cloudbridge.interfaces.resources import TrafficDirection


def main():
    DELETE_DEFAULT = "defaultdelete"
    parser = argparse.ArgumentParser(description='Bulk instance creation '
                                                 'with CloudBridge.')

    parser.add_argument('-n', '--number',
                        help='Number of instances to create. If not supplied, '
                             'default to 1.',
                        required=False,
                        type=int,
                        metavar='[integer]')
    parser.add_argument('-i', '--image-id',
                        help='ID of image to use for the  instances. Will '
                             'default to Ubuntu 18.04 on Jetstream.',
                        required=False,
                        type=str,
                        default='',
                        metavar='[image_id]')
    parser.add_argument('-m', '--image-name',
                        help='Name of image to use for the  instances. Will '
                             'default to Ubuntu 20 on Jetstream.',
                        required=False,
                        type=str,
                        default='Featured-Ubuntu22',
                        metavar='[image_name]')
    parser.add_argument('-l', '--label',
                        help='Label prefix that will be used for all '
                             'resources. Will default to "bulk-cb".',
                        required=False,
                        type=str,
                        default='bulk-cb',
                        metavar='[my-prefix]')
    parser.add_argument('-s', '--start',
                        help='Number at which to start numbering instances. '
                             'Will default to 0.',
                        required=False,
                        type=int,
                        default=0,
                        metavar='[integer]')
    parser.add_argument('-t', '--vm-type',
                        help='Name of the VM Type to use. Will use '
                             '"m1.small" by default for Jetstream.',
                        required=False,
                        type=str,
                        default='m1.small',
                        metavar='[vm_type_name]')
    parser.add_argument('-v', '--volume-size',
                        help='If volume size (in Gi) is specified, a volume of'
                             'that size will be attached',
                        required=False,
                        type=int,
                        default=0,
                        dest="volume_size",
                        metavar='[integer]')
    parser.add_argument('-o', '--output',
                        help='Path to output file for instance and password '
                             'information. By default will output to '
                             '"info.txt" in the current directory.',
                        required=False,
                        type=str,
                        default='info.txt',
                        metavar='[/path/to/file]')
    parser.add_argument('-p', '--provider',
                        help='Provider to be used by CloudBridge. Defaults to'
                             '"openstack".',
                        required=False,
                        type=str,
                        choices=['openstack', 'azure', 'aws', 'gce'],
                        default='openstack')
    parser.add_argument('--network',
                        help='Network ID to be used by CloudBridge.',
                        required=False,
                        type=str,
                        metavar='[net_id]',
                        default='')
    parser.add_argument('--subnet',
                        help='Subnet ID to be used by CloudBridge.',
                        required=False,
                        type=str,
                        metavar='[sn_id]',
                        default='')
    parser.add_argument('--firewall',
                        help='Firewall ID to be used by CloudBridge.',
                        required=False,
                        type=str,
                        metavar='[fw_id]',
                        default='')
    parser.add_argument('--router',
                        help='Router ID to be used by CloudBridge.',
                        required=False,
                        type=str,
                        metavar='[r_id]',
                        default='')
    parser.add_argument('--delay',
                        help="Number of seconds to wait before setting up "
                             "SSH access. This is needed if the VMs are not "
                             "ready for SSH access right after they're "
                             "booted. Will default to 0.",
                        required=False,
                        type=int,
                        metavar='[integer]',
                        default=1)
    parser.add_argument('--delete',
                        help='Instance ID to delete.',
                        required=False,
                        type=str,
                        metavar='[instance id]',
                        default=DELETE_DEFAULT)
    pwd_group = parser.add_mutually_exclusive_group()
    pwd_group.add_argument('--password',
                           help='SSH password access will be enabled if '
                                '"--password" or "--random-password" is used',
                           required=False,
                           type=str)
    pwd_group.add_argument('--random-password',
                           help="If set, enable password-based ssh login for "
                                "the launched instane(s).",
                           dest="random_pwd",
                           required=False,
                           action='store_true')

    args = vars(parser.parse_args())
    image_id = args['image_id']
    image_name = args['image_name']
    prefix = args['label']
    start = args['start']
    n = args['number'] if args['number'] else 1
    vm_type_name = args['vm_type']
    vol_size = args['volume_size']
    info_file_path = args['output']
    prov = args['provider']
    delay = args['delay']
    random_pwd = args['random_pwd']
    delete_inst = args['delete']
    global_password = args['password']
    enable_pwd = global_password or random_pwd

    # Each instance will have a randomly generated password of this size
    pw_size = 8  # chars
    # And will use this pool of characters to generate it
    pw_contents = string.ascii_lowercase
    pw_contents += string.ascii_uppercase
    pw_contents += string.digits

    # ADD CONFIGURATION HERE IF YOU DO NOT WISH TO USE SYSTEM-LEVEL CONF
    # Using a configuration file or environment variables by default.
    config = {}
    if prov == "azure":
        prov = ProviderList.AZURE
    elif prov == "aws":
        prov = ProviderList.AWS
    elif prov == "openstack":
        prov = ProviderList.OPENSTACK
    elif prov == "gce":
        prov = ProviderList.GCE

    provider = _init_provider(config, prov)

    # If delete arg was supplied, delete the give instance and exit
    if delete_inst and delete_inst != DELETE_DEFAULT:
        _delete_instance(provider, delete_inst)
        exit(0)
    elif not delete_inst:
        print("Error: --delete was used but no instance ID was given. Use -h for more usage information.")
        exit(1)

    # This Key Pair can be used for all instances
    # The private portion will be created in the current directory with the
    # same name as the Key Pair
    master_kp, kp_file = _init_master_kp(prefix, provider)

    net = args['network']
    if not net:
        net = _init_network(prefix, provider)
    else:
        net = provider.networking.networks.get(net)
    print("Using network: " + str(net))

    sn = args['subnet']
    if not sn:
        sn = _init_subnet(prefix, provider, net)
    else:
        sn = provider.networking.subnets.get(sn)
    print("Using subnet: " + str(sn))

    router = args['router']
    if not router:
        router, gw = _init_router_and_gateway(prefix, provider, sn)
    else:
        router = provider.networking.routers.get(router)
        gw = net.gateways.get_or_create()
    print("Using router: " + str(router))
    print("Using gateway: " + str(gw))

    fw = args['firewall']
    if not fw:
        fw = _init_firewall(prefix, provider, net)
    else:
        fw = provider.security.vm_firewalls.get(fw)
    print("Using firewall: " + str(fw))

    vm_type = get_vm_type_by_name(provider, vm_type_name)
    image = get_image(provider, image_id, image_name)

    create_instances(prefix, provider, n, start, sn, gw, fw,
                     master_kp, vm_type, vol_size, image, kp_file,
                     pw_contents, pw_size, info_file_path,
                     delay, enable_pwd, global_password)


def _init_provider(config, provider):
    # Connecting to provider and generating keypair for all instances
    prov = CloudProviderFactory().create_provider(provider,
                                                  config)
    return prov


def _delete_instance(provider, inst_id):
    inst = provider.compute.instances.get(inst_id)
    if inst:
        print("Deleting instance " + str(inst))
        inst.delete()


def _init_master_kp(prefix, provider):
    kp_name = prefix + '-masterkey'
    kp_file = kp_name + '.pem'

    kp_find = provider.security.key_pairs.find(name=kp_name)
    if len(kp_find) > 0:
        kp = kp_find[0]

    else:
        print("Key pair not found. Creating a new key pair.")
        kp = provider.security.key_pairs.create(kp_name)

        # Some software (eg: paramiko) require that RSA be specified
        key_contents = kp.material
        if 'RSA PRIVATE' not in key_contents:
            key_contents = key_contents.replace('PRIVATE KEY',
                                                'RSA PRIVATE KEY')

        # Writing private portion of key to .pem file
        with open(kp_file, 'w') as f:
            f.write(key_contents)
        os.chmod(kp_file, 0o400)
        print("Private key stored in: " + str(kp_file))
    print("Using key pair: " + str(kp))
    return kp, kp_file


def generate_password(size, characters):
    return ''.join(random.choice(characters) for i in range(size))


def _init_network(prefix, provider):
    # Getting already existing network or creating a new one
    net_label = prefix + '-network'
    net_find = provider.networking.networks.find(label=net_label)
    if len(net_find) > 0:
        net = net_find[0]
    else:
        print("Creating new network")
        net = provider.networking.networks.create(
            label=net_label, cidr_block='10.0.0.0/16')
    return net


def _init_subnet(prefix, provider, network):
    # Getting already existing subnet or creating a new one
    sn_label = prefix + '-subnet'
    sn_find = provider.networking.subnets.find(label=sn_label)
    if len(sn_find) > 0:
        sn = sn_find[0]
    else:
        print("Creating new subnet")
        sn = provider.networking.subnets.create(label=sn_label,
                                                network=network,
                                                cidr_block='10.0.0.0/24')
    return sn


def _init_router_and_gateway(prefix, provider, subnet):
    # Getting already existing router or creating a new one
    router_label = prefix + '-router'
    network = subnet.network
    router_find = provider.networking.routers.find(label=router_label)
    if len(router_find) > 0:
        router = router_find[0]
    else:
        print("Creating new router")
        router = provider.networking.routers.create(network=network,
                                                    label=router_label)
        router.attach_subnet(subnet)

    gateway = network.gateways.get_or_create()
    router.attach_gateway(gateway)
    return router, gateway


def _init_firewall(prefix, provider, network):
    # Getting already existing firewall or creating a new one
    fw_label = prefix + '-firewall'
    fw_find = provider.security.vm_firewalls.find(label=fw_label)
    if len(fw_find) > 0:
        fw = fw_find[0]
    else:
        print("Creating new firewall")
        fw = provider.security.vm_firewalls.create(fw_label, network,
                                                   'Bulk instances')
        # Opening up the appropriate ports, as as list of tuples in the
        # following format: (from_port, to_port).
        ports = [(22, 22), (80, 80), (8080, 8080), (30000, 30100)]
        for port in ports:
            fw.rules.create(TrafficDirection.INBOUND, 'tcp', port[0], port[1],
                            '0.0.0.0/0')
    return fw


def get_image(provider, image_id, image_name):
    if image_id:
        img = provider.compute.images.get(image_id)
    else:
        DEFAULT_OWNER_PUBLIC_IMAGES_JS2="d05cee28f6834f99b44160621a520acd"
        img = [i for i in list(prov.os_conn.image.images(owner="d05cee28f6834f99b44160621a520acd")) if i.name=='Featured-Ubuntu22']
        if len(img) > 0:
            img = img[0]
    print("Using image: " + str(img))
    return img


def get_vm_type_by_name(provider, vm_type_name):
    for t in provider.compute.vm_types:
        if t.name == vm_type_name:
            print("Using VM Type: " + str(t))
            return t


def _create_instance(prefix, provider, i, subnet, gateway, firewall,
                     key_pair, vm_type, vol_size, image):
    """
    Create a single instance
    """
    print('\nCreating Instance #' + str(i))
    curr_label = prefix + "-inst-" + str(i)
    lc = None
    if vol_size:
        lc = provider.compute.instances.create_launch_config()
        lc.add_volume_device(source=image,
                             size=int(vol_size),
                             is_root=True)
    inst = provider.compute.instances.create(
        label=curr_label, image=image, vm_type=vm_type,
        subnet=subnet, key_pair=key_pair, vm_firewalls=[firewall], launch_config=lc)
    inst.wait_till_ready()  # This is a blocking call

    # Get an available or create a floating IP, then attach it and print
    # the public ip
    fip = None
    for each_fip in gateway.floating_ips:
        if not each_fip.in_use:
            fip = each_fip
            break

    if not fip:
        fip = gateway.floating_ips.create()
        print("Created new IP: " + fip.public_ip)
    else:
        print("Using existing IP: " + fip.public_ip)

    inst.add_floating_ip(fip)
    inst.refresh()
    try:
        inst_ip = str(inst.public_ips[0])
    # Sometimes the refresh above does not properly refresh the public IPs
    # resulting in no attached IPs and an IndexError
    # Catch this exception if it happens and retry once after waiting a few
    # seconds
    except IndexError:
        # Arbitrary wait
        time.sleep(10)
        inst.refresh()
        inst_ip = str(inst.public_ips[0])
    print('Instance Public IP: ' + inst_ip)
    print('Instance "' + curr_label + '" created.')

    return curr_label, inst.id, inst_ip


def add_password_access(prev, ip, pwd, kp_file_path):
    prev.append((1, ip, pwd, kp_file_path))
    return attempt_password_access(prev)


def attempt_password_access(prev):
    max_attempts = 10
    new = []
    for i in range(len(prev)):
        attempt, currip, pwd, kp = prev[i]
        print("Attempt #{}/{} to change password for "
              "instance with IP '{}'".format(attempt, max_attempts, currip))
        result = _set_password_access(currip, pwd, kp)
        if result.returncode == 0:
            print("Successfully changed password for "
                  "instance with IP '{}'".format(currip))
        else:
            print("Attempt failed with returncode {} and error "
                  "message '{}'".format(result.returncode, result.stderr))
            if attempt == max_attempts:
                print("ALL ATTEMPTS FAILED. PASSWORD IS NOT ENABLED FOR "
                      "THE INSTANCE WITH IP '{}'".format(currip))
            else:
                new.append((attempt + 1, currip, pwd, kp))
    return new


def _set_password_access(ip, desired_password, kp_file_path):
    return subprocess.run([
            'ssh', '-o', 'StrictHostKeyChecking=no', '-o',
            'UserKnownHostsFile=/dev/null', '-i', kp_file_path,
            'ubuntu@' + ip, 'sed -e \
                s/"PasswordAuthentication no"/"PasswordAuthentication yes"/g \
                /etc/ssh/sshd_config > gcc-temp.txt \
                && sudo mv gcc-temp.txt /etc/ssh/sshd_config \
                && sudo service ssh restart\
                && echo "ubuntu:' + desired_password + '" | sudo chpasswd \
                && exit'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    # && sudo pip install -U cryptography\
    # && sudo rm -rf /usr/lib/python2.7/dist-packages/OpenSSL\
    # && sudo rm -rf /usr/lib/python2.7/dist-packages/\
    # pyOpenSSL-0.15.1.egg-info\
    # && sudo pip install pyopenssl\
    # The cryprography and openssl fixes are needed to run the demo at:
    # https://github.com/galaxyproject/dagobah-training/blob/2018-gccbosc/sessions/14-ansible/ex2-galaxy-ansible.md
    # in June 2018


def append_info_to_file(info_file_path, label, id, ip, password=None):
    table = '{},{},{},{}\n'
    with open(info_file_path, 'a') as info:
        info.write(table.format(label, id, ip, password))


def create_instances(prefix, provider, n, start, subnet, gateway, firewall,
                     key_pair, vm_type, vol_size, image, kp_file_path,
                     pw_contents, pw_size, info_file_path,
                     delay, enable_pwd, global_pwd):
    """
    Creates the indicated number of instances after initialization.
    """
    init_message = "Creating {} instances, numbered starting from " \
                   "index {}, and labeled with the prefix '{}'."
    print(init_message.format(n, start, prefix))

    pw_list = []

    for i in range(start, n + start):
        label, ins_id, ins_ip = _create_instance(prefix, provider, i, subnet,
                                                 gateway, firewall, key_pair,
                                                 vm_type, vol_size, image)
        pw = None
        if enable_pwd:
            pw = (global_pwd if global_pwd
                  else generate_password(pw_size, pw_contents))
            pw_list = add_password_access(pw_list, ins_ip,
                                          pw, kp_file_path)
        append_info_to_file(info_file_path, label, ins_id, ins_ip, pw)

    while pw_list:
        time.sleep(delay)
        pw_list = attempt_password_access(pw_list)


if __name__ == "__main__":
    main()
