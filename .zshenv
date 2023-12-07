export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

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
export HOMEBREW_GITHUB_API_TOKEN=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
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ENV_HINTS=1
export PYTHONDONTWRITEBYTECODE=1
export HISTORY_IGNORE="yt-dlp*"
