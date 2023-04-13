#!/bin/bash
set -xe
if [[ -z "${BIOCONDUCTOR_NAME}" ]]; then
  if [[ -z "${TERRA_R_PLATFORM}" ]]; then
    BIOCONDUCTOR_NAME="undefined"
  else
    BIOCONDUCTOR_NAME="${TERRA_R_PLATFORM}"
  fi
fi

echo "${BIOCONDUCTOR_NAME}"
