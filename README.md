# 0. Set up for the ENV
---
Please copy those environments variable in `bashrc/zshrc` in the .env.sample from `scripts` and set those path before run the scripts

For example:

- REPO_DIRECTORY='/home/sample/code/codium'
- CODIUM_USER_CONFIG_PATH="${HOME}/.config/VSCodium/User"

# 1. Codium Configuration:
Run these following command to sync the codium configuration from repo to local:

```
scripts/codium_from_git.sh
scripts/install_extension.sh
```

Run these following command to sync the codium configuration from local to git:
```
scripts/codium_to_git.sh
```

# 2. Zsh History && Configuration
Run these following command sync the ZSH history & configuration from local to repo:
```
scripts/sync_zsh.sh
```