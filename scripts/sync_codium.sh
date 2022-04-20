#!/bin/bash
while true; do
    read -p 'Syncing Codium Configuration Option:
    1.From LOCAL to REPOSITORY
    2.From REPOSITORY to LOCAL
    3.Install Extension from extension scripts.
    4.Export Extension to scripts
    --Choose 1, 2, 3 or 4: ' option
    case $option in
        [1] )
            while true; do
                read -p "Confirm [Y/n]:" yn
                case $yn in
                    [Yy]* )  cp -ur "${CODIUM_USER_CONFIG_PATH}/snippets" "${REPO_DIRECTORY}/Codium/User/snippets" ; cp -u "${CODIUM_USER_CONFIG_PATH}/keybindings.json" "${REPO_DIRECTORY}/Codium/User/keybindings.json"; cp -u "${CODIUM_USER_CONFIG_PATH}/settings.json" "${REPO_DIRECTORY}/Codium/User/settings.json" ; echo "##### DONE" ;
                        break;;

                    [Nn]* ) exit;;
                esac
            done
            break;;
        [2] )
            while true; do
                read -p "Confirm [Y/n]:" yn
                case $yn in
                    [Yy]* )  cp -ur "${REPO_DIRECTORY}/Codium/User" "${CODIUM_USER_CONFIG_PATH}";
                        break;;
                    [Nn]* ) exit;;
                esac
            done
            break;;
        [3] )
            echo "Install Extension to Codium"; exec "${REPO_DIRECTORY}/scripts/extensions/extension.sh";
            break;;
        [4] )
            echo "Export Codium Extensions installation script"; codium --list-extensions  | xargs -L 1 echo codium --install-extension |& tee ${REPO_DIRECTORY}/scripts/extensions/extension.sh;
            break;;
    esac
done