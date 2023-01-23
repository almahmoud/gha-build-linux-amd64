#!/bin/bash
set -e

PKGTOMARK=$1

# Remove package from list. Can always assume it has no dependencies or it wouldn't have been dispatched
sed -i "s/    \"$PKGTOMARK\": \[\],\?//g" packages.json
# Remove package as a dependency from list of other packages
sed -i "s/        \"$PKGTOMARK\",\?//g" packages.json
# Remove extra new lines
sed -i -z 's/,\n\n\+}/}/g' packages.json
sed -i -z 's/,\n\n\+ *]/]/g' packages.json
# Reprint through python json package for consistent formatting
python3 -c 'import json; f = open("packages.json", "r"); pkgs = json.load(f); f.close(); f = open("packages.json", "w"); f.write(json.dumps(pkgs, indent=4)); f.close()'
