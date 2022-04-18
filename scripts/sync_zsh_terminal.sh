#!/bin/bash
echo "--- Copying from local configuration to repository"

set -x

cp -u "${HOME}/.zshrc" "${REPO_DIRECTORY}/zsh/dev/.zshrc"
cp -u "${HOME}/.zsh_history" "${REPO_DIRECTORY}/zsh/dev/.zsh_history"