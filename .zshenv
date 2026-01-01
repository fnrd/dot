export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

path+=('/usr/local/bin')
path+=('/usr/local/sbin')
path+=('~/.local/bin')

if [[ $(uname) == 'Darwin' ]]; then
  source "$HOME/.homebrew/env"
  source "$HOME/.cargo/env"
fi

export PATH

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
export GPG_TTY=$(tty)
export PYTHONDONTWRITEBYTECODE=1

export DISPLAY=:0
