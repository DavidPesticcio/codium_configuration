# 0. Set up for the ENV
---
Create `.env` based on in the `.env.sample`:

For example:

- REPO_DIRECTORY='/home/sample/code/codium'
- CODIUM_USER_CONFIG_PATH="${HOME}/.config/VSCodium/User"

# 1. Syncing Codium Configuration:
Run these following command to sync the codium configuration and then choosing the options:

```
scripts/sync_codium.sh
```
Or you could run the VSCode Task instead, and choose the option in Terminal view (or using Ctrl + Shift + P):
```
Terminal > Run Task > Sync Codium Settings
```
# 2. Zsh History && Configuration
Run these following command sync the ZSH history & configuration and then choosing the options (or using Ctrl + Shift + P):
```
scripts/sync_zsh.sh
```
Or you could run the VSCode Task instead, and choose the option in Terminal view:
```
Terminal > Run Task > Sync ZSH Settings & History
```

# 3. Commit & Push change:
Please run these following tasks to update the change (or using Ctrl + Shift + P):
```
Terminal > Run Task > Git Add Change
```
```
Terminal > Run Task > Git Commit Change
```
```
Terminal > Run Task > Git Push Change
```