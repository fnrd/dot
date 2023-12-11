export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

bindkey -v
export KEYTIMEOUT=1

export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=/usr/bin/nvim
export HISTSIZE=100
export SAVEHIST=300
export GREP_OPTIONS='--color=always'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"
export GPG_TTY=$(tty)
export PYTHONDONTWRITEBYTECODE=1

source "$HOME/.homebrew/env"
source "$HOME/.cargo/env"
