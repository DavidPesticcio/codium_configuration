#!/bin/bash
while true; do
    read -p "Sync ZSH configuration & history:
    1. From LOCAL to REPOSITORY
    2. From REPOSITORY to LOCAL
    Choose 1 or 2: " option
    case $option in
    [1])
        read -p "Which User? (for example dev): " user
        echo "### Sycing from LOCAL to REPO"
        cp -u "${HOME}/.zshrc" "${REPO_DIRECTORY}/zsh/$user/.zshrc"
        cp -u "${HOME}/.zsh_history" "${REPO_DIRECTORY}/zsh/$user/.zsh_history"
        echo "### Done"
        break
        ;;
    [2])
        read -p "Which User? (for example dev): " user
        echo "### Syncing from REPO to LOCAL"
        cp -u "${REPO_DIRECTORY}/zsh/$user/.zshrc" "${HOME}/.zshrc"
        cp -u "${REPO_DIRECTORY}/zsh/$user/.zsh_history" "${HOME}/.zsh_history"
        echo "### Done"
        break
        ;;
    esac
done
