#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main

PKGTOMARK=$1
TAR=$2
TARGETFILE=$3
TARGETFILE=${TARGETFILE:-"packages.json"}

#rclone ls js2:/gha-build | grep "tar" | awk '{print $2}' > /tmp/tars
#cat /tmp/tars | awk -F'_' '{print $1}' | sed 's#lists/##g' | xargs -i bash -c 'grep "{}" /tmp/tars | head -n1 > lists/{}'
echo "$TAR" > "lists/$PKGTOMARK"

cat << EOF > /tmp/remove_non_strong.py
import json
with open('$TARGETFILE', 'r') as f:
    pkgs = json.load(f)
with open('strongdeps.json', 'r') as f:
    strongdeps = json.load(f)
failedpkg = '$PKGTOMARK'
affected = [p for p in pkgs if (failedpkg in pkgs[p] and failedpkg not in strongdeps[p])]
for pkg in affected:
    pkgs[pkg].remove(failedpkg)
with open('$TARGETFILE', 'w') as f:
    f.write(json.dumps(pkgs, indent=4))
EOF

if [[ ${TAR} != *"tar.gz"* ]]; then
    bash /tmp/remove_non_strong.py
else
	bash .github/scripts/mark_done.sh $PKGTOMARK $TARGETFILE
fi

git add lists
git add "$TARGETFILE"
git commit -m "Mark pushed $PKGTOMARK"
git push
