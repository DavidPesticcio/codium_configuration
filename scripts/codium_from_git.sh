#!/bin/bash

readonly CODIUM_USER_CONFIG_PATH="${HOME}/.config/VSCodium/User"
readonly CURRENT_DIR="$(pwd)"
set -x

echo "--- Copying from repository to local configuration"
cp -ur ${CURRENT_DIR}/Codium/User ${CODIUM_USER_CONFIG_PATH}