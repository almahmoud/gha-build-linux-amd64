import json, yaml
from os.path import exists
from tabulate import tabulate
import requests, time, humanize

def get_pkgs_dict():
    """Loads package information from 'alldeps.json' file"""
    with open("alldeps.json", "r") as f:
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

def get_pkg_status_and_tarname(pkg, name):
    """Gets the status and tar name for a package"""
    status = "Unclaimed"
    tarname = ""
    if exists(f"lists/failed/{pkg}"):
        status = "Failed"
        tarname = f"https://github.com/almahmoud/gha-build/blob/main/lists/failed/{pkg}"
    elif exists(f"lists/{pkg}"):
        with open(f"lists/{pkg}", "r") as pf:
            plog = pf.read()
        if plog.endswith("tar.gz\n"):
            status = "Succeeded"
            tarname = plog.strip()
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
        tartext = f"[{tartext}](https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/{container_path_name}/{arch}/{runstart}/{tarname})"
    return tartext

def check_cran_archived(pkg, logtext, each):
    """Checks if a package has been archived on CRAN"""
    if f"package ‘{pkg}’ is not available for Bioconductor version" in logtext:
        cranurl = f"https://cran.r-project.org/web/packages/{pkg}/index.html"
        r = requests.get(cranurl)
        retries = 0
        while retries <= 5 and r.status_code != 200:
            r = requests.get(cranurl)
            retries += 1
            time.sleep(5)
        if r.status_code == 200:
            crantext = r.content.decode("utf-8")
            if "Archived on " in crantext:
                archivetext = crantext[crantext.find("Archived on"):]
                archivetext = archivetext[:archivetext.find("\n")]
                each.append(f"[CRAN Package '{pkg}']({cranurl}) archived. Extracted text: {archivetext}")

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
        missingtext = missingtext[:missingtext.find("’")]
        each.append(f"Undeclared R dependency: '{missingtext}'")
    if "ERROR: dependency" in logtext:
        tofind = "ERROR: dependency ‘"
        missingtext = logtext[logtext.find(tofind)+len(tofind):]
        missingtext = missingtext[:missingtext.find("’")]
        each.append(f"Undeclared R dependency: '{missingtext}'")

def add_bbs_status(pkg, each):
    """
    Add the CRAN status for a package to the `each` list.
    The CRAN status is determined by checking the package's build log for certain keywords.
    """
    bbsurl = f"https://bioconductor.org/checkResults/release/bioc-LATEST/{pkg}/raw-results/nebbiolo2/buildsrc-summary.dcf"
    r = requests.get(bbsurl)
    bbs_status = ""
    retries = 0
    if "CRAN Package" not in each[-1]:
        while retries <= 5 and r.status_code != 200:
            r = requests.get(bbsurl)
            retries += 1
            time.sleep(5)
        if r.status_code == 200:
            bbs_summary = r.content.decode("utf-8")
            bbs_status = yaml.safe_load(bbs_summary).get("Status", "Unknown")
        if not bbs_status:
            bbs_status = "Failed retrieving"
        else:
            bbs_status = f"[{bbs_status}]({bbsurl.replace('/raw-results/nebbiolo2/buildsrc-summary.dcf', '')})"
        each.insert(2, bbs_status)
    else:
        each.insert(2, 'N/A: CRAN package')

def process_failed_pkgs(tables):
    """Updates the tar text for failed packages to include a link to the build log and checks if the package has been archived on CRAN"""
    for each in tables["Failed"]:
        update_failed_tartext(each)
        pkg = each[0][each[0].find('[')+1:each[0].find(']')]
        logtext = get_failed_log(pkg)
        check_cran_archived(pkg, logtext, each)
        check_dependency_missing(logtext, each)
        add_bbs_status(pkg, each)

def get_runmeta(filepath):
    """Get timestamp or container name from the start of this run cycle from the given file path"""
    with open(filepath, "r") as f:
        meta = f.read()
    return meta.strip()

def main():
    runstart = get_runmeta("runstarttime")
    containername = get_runmeta("containername")
    arch = get_runmeta("arch")
    pkgs = get_pkgs_dict()
    tables = {"Failed": [], "Unclaimed": [], "Succeeded": []}
    for pkg in list(pkgs):
        name = get_pkg_name_and_run_info(pkg, containername, runstart, arch)
        status, tarname = get_pkg_status_and_tarname(pkg, name)
        tartext = add_successful_size_and_url(pkg, status, tarname, containername, runstart, arch)
        tables[status].append([name, status, tartext])
    process_failed_pkgs(tables)

    tables["Failed"] = [x if len(x)>4 else x+["Error unknown"] for x in tables["Failed"]]
    tables["Failed"].sort(key=lambda x: x[4])

    failed_headers = ["Package", "Status", "BBS Status", "Log", "Known Error"]
    unclaimed_headers = ["Package", "Status", "Tarball"]
    succeeded_headers = ["Package", "Status", "Tarball"]

    with open(f"{runstart}/README.md", "w") as f:
        f.write(f"# Summary\n\n{len(tables['Succeeded'])} built packages\n\n{len(tables['Failed'])} failed packages\n\n{len(tables['Unclaimed'])} unclaimed packages\n\n")
        f.write(f"\n\n## Failed ({len(tables['Failed'])})\n")
        f.write(tabulate(tables["Failed"], failed_headers, tablefmt="github"))
        f.write(f"\n\n## Unclaimed ({len(tables['Unclaimed'])})\n")
        f.write(tabulate(tables["Unclaimed"], unclaimed_headers, tablefmt="github"))
        f.write(f"\n\n## Succeeded ({len(tables['Succeeded'])})\n")
        f.write(tabulate(tables["Succeeded"], succeeded_headers, tablefmt="github"))

if __name__ == "__main__":
    main()
