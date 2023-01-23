#!/bin/bash
set -xe
DEPNAME=$1
LIBRARY=$2
GITREPO=${3:-"almahmoud/gha-build"}

# Get recorded runid
RUNID=$(cat "logs/$(cat runstarttime)/run_ids/$(cat containername)/$(cat arch)/$DEPNAME" | grep "runs/" | tail -1 | awk -F'runs/' '{print $2}' | awk -F'/' '{print $1}')

# Use GH API to get artifact ID with package name
ARTIFACT_ID=$(gh api -H "Accept: application/vnd.github+json" /repos/$GITREPO/actions/artifacts?name="artifact-$DEPNAME" --jq ".artifacts[] | select(.workflow_run.id==$RUNID) | .id")

echo $RUNID
echo $ARTIFACT_ID

# Download artifact and unpackage as library
# (artifact comes zipped by default, inside which is
#  a tar of the library, tar-ed up in the github action)
( cd $(dirname $LIBRARY) && \
curl -o $DEPNAME.zip -L \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  https://api.github.com/repos/$GITREPO/actions/artifacts/$ARTIFACT_ID/zip &&\
unzip $DEPNAME.zip && rm $DEPNAME.zip &&\
tar -xvf "$DEPNAME".tar.gz && rm "$DEPNAME".tar.gz )
