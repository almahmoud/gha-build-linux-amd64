import json, yaml
from os.path import exists
import os
from tabulate import tabulate
import requests, time, humanize

def get_bioc_version():
   """Gets bioc version from log file"""
   with open("bioc_build/bioc", "r") as f:
      biocver = f.read()
   return biocver.replace(" ", ".")

def get_pkgs_dict(jsonfile):
    """Loads package information from 'biocdeps.json' file"""
    with open(jsonfile, "r") as f:
        pkgs = json.load(f)
    return pkgs

def get_pkg_name_and_run_info(pkg, container_path_name="rstudio-binaries", runstart="", arch="linux/amd64"):
    """Gets the name and run information for a package"""
    name = pkg
    runid = ""
    runurl = ""
    if exists(f"logs/{runstart}/run_ids/{container_path_name}/{arch}/{pkg}"):
        with open(f"logs/{runstart}/run_ids/{container_path_name}/{arch}/{pkg}", "r") as frun:
            runid = frun.read()
            runurls = runid.strip().replace("null\n", "").split("\n")
            runurl = ""
            for u in runurls:
                if "github.com" in u:
                    runurl = u
            if not runurl:
                runurl = runurls[-1]
            if "github.com" not in runurl:
                runurl = f"https://github.com/{runurl}"
            name = f"[{pkg}]({runurl})"
    return name

def get_pkg_status_and_tarname(pkg):
    """Gets the status and tar name for a package"""
    status = "Unclaimed"
    tarname = ""
    if exists(f"lists/failed/{pkg.strip()}"):
        status = "Failed"
        tarname = f"https://github.com/{os.environ.get('GITHUB_REPOSITORY', 'almahmoud/gha-build')}/blob/main/lists/failed/{pkg}"
    elif exists(f"lists/{pkg.strip()}"):
        with open(f"lists/{pkg.strip()}", "r") as pf:
            plog = pf.read().strip()
        if plog.endswith("tar.gz"):
            status = "Succeeded"
            tarname = plog
    return status, tarname

def add_successful_size_and_url(pkg, status, tarname, container_path_name="rstudio-binaries", runstart="", arch="linux/amd64"):
    """Add size and URL to successful tars"""
    tartext = tarname
    if status == "Succeeded":
        sizeinfo = ""
        if exists(f"logs/{runstart}/sizes/{container_path_name}/{arch}/binaries/{pkg}"):
            with open(f"logs/{runstart}/sizes/{container_path_name}/{arch}/binaries/{pkg}", "r") as sf:
                sizeinfo = sf.read()
        if sizeinfo:
            size_b = int(sizeinfo.split(" ")[0])
            tartext = f"{humanize.naturalsize(size_b)} {tarname}"
        tartext = f"[{tartext}](https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/{container_path_name}/{arch}/{runstart}/binaries/src/contrib/{tarname})"
    return tartext

def check_cran_archived(pkg, each):
    """Checks if a package has been archived on CRAN"""
    #if f"package ‘{pkg}’ is not available for Bioconductor version" in logtext:
    cranurl = f"https://cran.r-project.org/web/packages/{pkg}/index.html"
    r = requests.get(cranurl)
    retries = 0
    while retries <= 5 and r.status_code != 200:
        r = requests.get(cranurl)
        retries += 1
        time.sleep(5)
    if r.status_code == 200:
        crantext = r.content.decode("utf-8")
        archivetext = ""
        if "Archived on " in crantext:
            archivetext = crantext[crantext.find("Archived on"):]
        elif "Removed on" in crantext:
            archivetext = crantext[crantext.find("Removed on"):]
        if archivetext:
            archivetext = archivetext[:archivetext.find("\n")]
            currtext = each[-1]
            each[-1] = f"{currtext}. [CRAN Package '{pkg}']({cranurl}) archived. Extracted text: {archivetext}"
            return True
    return False

def get_logtext(logurl):
    """Gets the log text for a package by making a request to the log URL"""
    rawurl = logurl.replace("github.com", "raw.githubusercontent.com").replace("blob/", "")
    r = requests.get(rawurl)
    retries = 0
    while retries <= 5 and r.status_code != 200:
        r = requests.get(rawurl)
        retries += 1
        time.sleep(5)
    logtext = r.content if r.status_code == 200 else ""
    return logtext

def update_failed_tartext(each):
    """Updates the tar text for a failed package to include a link to the build log"""
    logurl = each[2]
    each[2] = f"[Build Log]({logurl})"

def get_failed_log(pkg):
    """Gets the log text for a failed package"""
    with open(f"lists/failed/{pkg}", "r") as lf:
        logtext = lf.read()
    return logtext

def check_dependency_missing(logtext, each):
    """
    Check if the package build failed due to a missing dependency.
    If a missing dependency is detected, update the 'each' list with a message indicating the missing dependency.
    """
    # Check missing dependency
    if "there is no package called" in logtext:
        tofind = "there is no package called ‘"
        missingtext = logtext[logtext.find(tofind)+len(tofind):]
        pkg = missingtext[:missingtext.find("’")]
        each.append(f"Failed R dependency: '{pkg}'")
        check_cran_archived(pkg, each)
        
    if "ERROR: dependency" in logtext:
        tofind = "ERROR: dependency ‘"
        missingtext = logtext[logtext.find(tofind)+len(tofind):]
        pkg = missingtext[:missingtext.find("’")]
        each.append(f"Failed R dependency: '{pkg}'")
        check_cran_archived(pkg, each)

def add_bbs_status(pkg, each):
    """
    Add the CRAN status for a package to the `each` list.
    The CRAN status is determined by checking the package's build log for certain keywords.
    """
    biocver = get_bioc_version()
    bbsurl = f"https://bioconductor.org/checkResults/{biocver}/bioc-LATEST/{pkg}/raw-results/nebbiolo1/buildsrc-summary.dcf"
    r = requests.get(bbsurl)
    bbs_status = ""
    retries = 0
    while retries <= 5 and r.status_code != 200:
        r = requests.get(bbsurl)
        retries += 1
        time.sleep(5)
    if r.status_code == 200:
        bbs_summary = r.content.decode("utf-8")
        bbs_status = yaml.safe_load(bbs_summary).get("Status", "Unknown")
    if not bbs_status:
        bbsurl = f"https://bioconductor.org/checkResults/{biocver}/bioc-LATEST/{pkg}/raw-results/nebbiolo2/buildsrc-summary.dcf"
        r = requests.get(bbsurl)
        retries = 0
        while retries <= 5 and r.status_code != 200:
            r = requests.get(bbsurl)
            retries += 1
            time.sleep(5)
        if r.status_code == 200:
            bbs_summary = r.content.decode("utf-8")
            bbs_status = yaml.safe_load(bbs_summary).get("Status", "Unknown")
        if not bbs_status:
            bbs_status = "Failed retrieving"
    if bbs_status != "Failed retrieving":
        bbs_status = f"[{bbs_status}]({bbsurl.split('/raw-results/')[0]})"
    each.insert(2, bbs_status)

def process_failed_pkgs(tables):
    """Updates the tar text for failed packages to include a link to the build log and checks if the package has been archived on CRAN"""
    for each in tables["Failed"]:
        update_failed_tartext(each)
        pkg = each[0][each[0].find('[')+1:each[0].find(']')]
        logtext = get_failed_log(pkg)
        # check_cran_archived(pkg, logtext, each)
        check_dependency_missing(logtext, each)
        add_bbs_status(pkg, each)

def process_unclaimed_pkgs(tables, leftpkgs):
    """Add blocking packages"""
    for each in tables["Unclaimed"]:
        currtext = each[2]
        pkg = each[0]
        if "[" in pkg:
            pkg = each[0][each[0].find('[')+1:each[0].find(']')]
        if leftpkgs.get(pkg):
            each[2] = f"Incomplete Bioc dependencies: {', '.join(leftpkgs[pkg])}. {currtext}"
        
def get_runmeta(filepath):
    """Get timestamp or container name from the start of this run cycle from the given file path"""
    with open(filepath, "r") as f:
        meta = f.read()
    return meta.strip()

def process_pkg_list(tables, pkgs, biocpkgs, containername, runstart, arch):
    for pkg in list(pkgs):
        name = pkg
        if pkg in biocpkgs:
            name = get_pkg_name_and_run_info(pkg, containername, runstart, arch)
        status, tarname = get_pkg_status_and_tarname(pkg)
        tartext = add_successful_size_and_url(pkg, status, tarname, containername, runstart, arch)
        tables[status].append([name, status, tartext])

def get_non_bioc_soft_tars(biocpkgs):
    with open("/tmp/alltars", "r") as f:
        tars = f.readlines()
    return [t for t in tars if t not in biocpkgs]

def main():
    runstart = get_runmeta("runstarttime")
    containername = get_runmeta("containername")
    arch = get_runmeta("arch")
    biocpkgs = get_pkgs_dict("biocdeps.json")
    leftpkgs = get_pkgs_dict("packages.json")
    tables = {"Failed": [], "Unclaimed": [], "Succeeded": []}
    process_pkg_list(tables, biocpkgs, biocpkgs, containername, runstart, arch)
    non_biocsoft_pkgs = get_non_bioc_soft_tars(biocpkgs)
    nonsofttables = {"Failed": [], "Unclaimed": [], "Succeeded": []}
    process_pkg_list(nonsofttables, non_biocsoft_pkgs, biocpkgs, containername, runstart, arch)

    process_failed_pkgs(tables)
    process_unclaimed_pkgs(tables, leftpkgs)

    tables["Failed"] = [x if len(x)>4 else x+["Error unknown"] for x in tables["Failed"]]
    tables["Failed"].sort(key=lambda x: x[4])

    failed_headers = ["Package", "Status", "BBS Status", "Log", "Known Error"]
    unclaimed_headers = ["Package", "Status", "Blocked By"]
    succeeded_headers = ["Package", "Status", "Tarball"]

    tables["NonBiocSoft"] = nonsofttables["Succeeded"]
    
    with open("README.md", "w") as f:
        f.write(f"# Summary\n\n{len(tables['Succeeded'])} Bioconductor sotware binaries built\n\n{len(tables['NonBiocSoft'])} Other dependency binaries built\n\n{len(tables['Failed'])} failed packages\n\n{len(tables['Unclaimed'])} unclaimed packages\n\n")
        f.write(f"\n\n## Failed ({len(tables['Failed'])})\n")
        f.write(tabulate(tables["Failed"], failed_headers, tablefmt="github"))
        f.write(f"\n\n## Unclaimed ({len(tables['Unclaimed'])})\n")
        f.write(tabulate(tables["Unclaimed"], unclaimed_headers, tablefmt="github"))
        f.write(f"\n\n## Bioconductor Software Binaries Built ({len(tables['Succeeded'])})\n")
        f.write(tabulate(tables["Succeeded"], succeeded_headers, tablefmt="github"))
        f.write(f"\n\n## Other Dependency Binaries ({len(tables['Succeeded'])})\n")
        f.write(tabulate(tables["NonBiocSoft"], succeeded_headers, tablefmt="github"))

if __name__ == "__main__":
    main()
