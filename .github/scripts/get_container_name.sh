#!/bin/bash
set -xe
if [[ -z "${CONTAINER_NAME}" ]]; then
  if [[ -z "${TERRA_R_PLATFORM}" ]]; then
    CONTAINER_NAME="undefined"
  else
    CONTAINER_NAME="${TERRA_R_PLATFORM}"
  fi
fi

echo "${CONTAINER_NAME}"
