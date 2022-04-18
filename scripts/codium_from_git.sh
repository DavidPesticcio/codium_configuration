#!/bin/bash
echo "--- Copying from repository to local configuration repository"
set -x

cp -ur "${REPO_DIRECTORY}/Codium/User" "${CODIUM_USER_CONFIG_PATH}"