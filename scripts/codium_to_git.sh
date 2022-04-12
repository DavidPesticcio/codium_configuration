#!/bin/bash

readonly CODIUM_USER_CONFIG_PATH="${HOME}/.config/VSCodium/User"
readonly CURRENT_DIR="$(pwd)"
set -x

echo "--- Copying from local configuration to repository"
cp -ur ${CODIUM_USER_CONFIG_PATH}/snippets ${CURRENT_DIR}/Codium/User/snippets
cp -u ${CODIUM_USER_CONFIG_PATH}/keybindings.json ${CURRENT_DIR}/Codium/User/keybindings.json
cp -u ${CODIUM_USER_CONFIG_PATH}/settings.json ${CURRENT_DIR}/Codium/User/settings.json