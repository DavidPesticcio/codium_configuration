#!/bin/bash
while true; do
    read -p "Do you override the current configuration from repository? [Y/n] " yn
    case $yn in
        [Yy]* )  cp -ur "${REPO_DIRECTORY}/Codium/User" "${CODIUM_USER_CONFIG_PATH}"; break;;
        [Nn]* ) exit;;
    esac
done