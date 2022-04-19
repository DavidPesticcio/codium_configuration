#!/bin/bash
while true; do
    read -p "Do you want to copy configuration to repository? [Y/n] " yn
    case $yn in
        [Yy]* ) cp -u "${HOME}/.zshrc" "${REPO_DIRECTORY}/zsh/dev/.zshrc"; cp -u "${HOME}/.zsh_history" "${REPO_DIRECTORY}/zsh/dev/.zsh_history"; break;;
        [Nn]* ) exit;;
    esac
done