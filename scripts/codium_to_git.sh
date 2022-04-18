#!/bin/bash
echo "--- Copying from local configuration to repository"

set -x

cp -ur "${CODIUM_USER_CONFIG_PATH}/snippets" "${REPO_DIRECTORY}/Codium/User/snippets"
cp -u "${CODIUM_USER_CONFIG_PATH}/keybindings.json" "${REPO_DIRECTORY}/Codium/User/keybindings.json"
cp -u "${CODIUM_USER_CONFIG_PATH}/settings.json" "${REPO_DIRECTORY}/Codium/User/settings.json"