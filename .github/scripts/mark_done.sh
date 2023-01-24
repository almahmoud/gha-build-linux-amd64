#!/bin/bash
set -xe

PKGTOMARK=$1
TARGETFILE=$2

# Remove package from list. Can always assume it has no dependencies or it wouldn't have been dispatched
sed -i "s/    \"$PKGTOMARK\": \[\],\?//g" $TARGETFILE
# Remove package as a dependency from list of other packages
sed -i "s/        \"$PKGTOMARK\",\?//g" $TARGETFILE
# Remove extra new lines
sed -i -z 's/,\n\n\+}/}/g' $TARGETFILE
sed -i -z 's/,\n\n\+ *]/]/g' $TARGETFILE
# Reprint through python json package for consistent formatting
python3 -c "import json; f = open('$TARGETFILE', 'r'); pkgs = json.load(f); f.close(); f = open('$TARGETFILE', 'w'); f.write(json.dumps(pkgs, indent=4)); f.close()"
