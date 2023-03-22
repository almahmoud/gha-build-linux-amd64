#!/bin/bash
python3 -c """
import json
with open('packages.json', 'r') as f:
    pkgs = json.load(f)
for pkg in pkgs:
    pkglist = pkgs.get(pkg)
    pkglist = [] if not pkglist else pkglist
    if pkg in pkglist:
        pkglist.remove(pkg)
    pkglist.sort()
    pkgs[pkg] = pkglist
with open('packages.json', 'w') as f:
    f.write(json.dumps(pkgs, indent=4))
"""
echo "$(TZ=EST date '+%Y-%m-%d-%H-%M')" > runstarttime
