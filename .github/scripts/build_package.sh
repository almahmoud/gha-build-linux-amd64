#!/bin/bash
set -x
export LIBRARY=$1
export PKG=$2

runstart=$(cat runstarttime)
containername=$(cat containername)
mkdir -p $LIBRARY
mkdir -p /tmp/tmp/tars/

# Get bioc dependencies list to pull their libraries from their build run
sed -n "/^    \"$PKG\"/,/^    \"/p" biocdeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/tmp/deps
# Get unique dependencies list to get binaries for them as well at the end
sed -n "/^    \"$PKG\"/,/^    \"/p" uniquedeps.json | grep '^        "' | awk -F'"' '{print $2}' > /tmp/tmp/uniquedeps


function process_dep() {
  if [ -d $LIBRARY/$1 ]; then
    echo "Dependency $1 is already found."
    return
  else
  	bash -c "curl -o $(dirname $LIBRARY)/$1.tar.gz https://js2.jetstream-cloud.org:8001/swift/v1/gha-build/$(cat containername)/$(cat arch)/$(cat runstarttime)/libraries/$1.tar.gz && ( cd $(dirname $LIBRARY) && tar -xvf $1.tar.gz && rm $1.tar.gz )"
  fi
}

export -f process_dep

if [ -s /tmp/tmp/deps ]; then
  cat /tmp/tmp/deps | xargs -i bash -c "if grep -q 'tar.gz$' lists/{}; then process_dep {}; else echo 'Skipping {}' && cat lists/{}; fi"
else
  echo "No dependencies"
fi

# Build package, and exit with code 0 only on success
# Redirect all stout/stderr to log
(time Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); if(BiocManager::install('$PKG', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)" 2>&1 ) 2>&1 | tee /tmp/tmp/$PKG
  
cat /tmp/tmp/uniquedeps | xargs -i Rscript -e "Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); BiocManager::install('{}', INSTALL_opts = '--build', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE)" 2>&1 >> /tmp/tmp/$PKG

mv *.tar.gz /tmp/tmp/tars/ || true

ls /tmp/tmp/tars | awk -F'_' '{print $1}' | grep -v "$PKG" | xargs -i bash -c 'if grep -q "tar.gz$" lists/{}; then rm /tmp/tmp/tars/$(cat lists/{}); else echo "{} tar not already found."; fi'

ls /tmp/tmp/tars | awk -F'_' '{print $1}' | xargs -i Rscript -e "install.packages('maketools'); p <- .libPaths(); p <- c('$LIBRARY', p); .libPaths(p); sysd <- maketools::package_sysdeps('{}'); if (nrow(sysd) > 0) { library(jsonlite); fileConn <- file('/tmp/tmp/{}-sysdeps'); writeLines(prettify(toJSON(sysd)), fileConn); close(fileConn); }"
