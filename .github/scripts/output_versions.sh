#!/bin/bash
echo os=$(Rscript -e 'sessionInfo()$running') >> $GITHUB_OUTPUT
echo r=$(Rscript -e 'R.Version()$version.string') >> $GITHUB_OUTPUT
echo bioc=$(Rscript -e 'BiocManager::version()') >> $GITHUB_OUTPUT
echo library=$(echo "tmp/built") >> $GITHUB_OUTPUT
echo platform=$(cat arch) >> $GITHUB_OUTPUT
echo sanitizedarch=$(cat arch | sed "s/[^[:alnum:]]/-/g") >> $GITHUB_OUTPUT
