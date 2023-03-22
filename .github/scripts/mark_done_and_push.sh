#!/bin/bash
set -xe
git pull origin main || git reset --hard origin/main

PKGTOMARK=$1
TAR=$2
TARGETFILE=$3
TARGETFILE=${TARGETFILE:-"packages.json"}

ls /tmp/tars/ | sed 's#/tmp/tars/##g' | awk -F'_' '{print $1}' | xargs -i bash -c 'ls /tmp/tars/ | sed "s#/tmp/tars/##g" | grep "^{}_" > lists/{}'
echo "$TAR" > "lists/$PKGTOMARK"

if [[ ${TAR} == *"tar.gz"* ]]; then
	bash .github/scripts/mark_done.sh $PKGTOMARK $TARGETFILE
fi

git add lists
git add "$TARGETFILE"
git commit -m "Mark $PKGTOMARK as $TAR"
git push
