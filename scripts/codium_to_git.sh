#!/bin/bash
while true; do
    read -p "Do you want to copy configuration to repository? [Y/n] " yn
    case $yn in
        [Yy]* ) cp -ur "${CODIUM_USER_CONFIG_PATH}/snippets" "${REPO_DIRECTORY}/Codium/User/snippets" ; cp -u "${CODIUM_USER_CONFIG_PATH}/keybindings.json" "${REPO_DIRECTORY}/Codium/User/keybindings.json"; cp -u "${CODIUM_USER_CONFIG_PATH}/settings.json" "${REPO_DIRECTORY}/Codium/User/settings.json" ;
        echo "##### DONE" ;break;;
        [Nn]* ) exit;;
    esac
done
