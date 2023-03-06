#!/bin/bash
echo os=$(cat bioc_build/os) >> $GITHUB_OUTPUT
echo r=$(cat bioc_build/r) >> $GITHUB_OUTPUT
echo bioc=$(cat bioc_build/bioc) >> $GITHUB_OUTPUT
echo library=$(echo "tmp/built") >> $GITHUB_OUTPUT
echo platform=$(cat arch) >> $GITHUB_OUTPUT
echo sanitizedarch=$(cat arch | sed "s/[^[:alnum:]]/-/g") >> $GITHUB_OUTPUT
