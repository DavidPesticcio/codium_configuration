# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/kris/.oh-my-zsh"
export PYTHONPYCACHEPREFIX=/home/kris/.pyc
export PATH="$HOME/.local/bin:$PYENV_ROOT/bin:$HOME/.cabal/bin:$PATH:/usr/local/go/bin"
export REPO_DIRECTORY='/home/kris/Code/Github/codium_configuration'
export CODIUM_USER_CONFIG_PATH="${HOME}/.config/VSCodium/User"
export PYENV_ROOT="$HOME/.pyenv"
export HISTTIMEFORMAT='%d-%m-%Y %T'
export LANG=en_US.UTF-8
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

[[ -s "/home/kris/.gvm/scripts/gvm" ]] && source "/home/kris/.gvm/scripts/gvm"

ZSH_THEME="agnoster"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
# zstyle ':omz:update' frequency 13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# HIST_STAMPS="mm/dd/yyyy"

# Plugins
plugins=(git terraform docker minikube zsh-autosuggestions poetry sudo zsh-syntax-highlighting z vscode)

source $ZSH/oh-my-zsh.sh

# User configuration

# Aliases
alias zshconfig="codium ~/.zshrc"
alias sd="shutdown now"
alias rb="reboot"
alias ls="ls -hotal --color=auto"
alias e="exit"
alias c="clear"
alias py="python3"
alias ins="sudo apt install"
alias rem="sudo apt purge"
alias upd="sudo apt update"
alias upg="sudo apt-get upgrade"
alias sipip="sudo pip install"
alias ipip="pip install"
alias arem="sudo apt autoremove"
alias clean="sudo apt clean"
alias gitc="git clone $1"
# alias pyflame="/home/kris/Code/Github/pyflame/src/pyflame"
alias flamegraph="/home/kris/Code/Github/FlameGraph/flamegraph.pl"
alias sservice="sudo systemctl start"
alias stservice="sudo systemctl stop"
alias staservice="systemctl status"
alias rsservice="sudo systemctl restart"
alias enservice="sudo systemctl enable"
alias disservice="sudo systemctl disable"
alias reservice="sudo systemctl daemon-reload"
function gaio() {
  git add .
  git commit -m "$1"
  git push
}
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
fpath+=${ZDOTDIR:-~}/.zsh_functions
