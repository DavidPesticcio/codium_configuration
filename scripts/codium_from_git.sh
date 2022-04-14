#!/bin/bash
set -x

echo "--- Copying from repository to local configuration"
echo "${REPO_DIRECTORY}"
cp -ur "${REPO_DIRECTORY}/Codium/User" "${CODIUM_USER_CONFIG_PATH}"