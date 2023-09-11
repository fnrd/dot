if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

fpath+=("$(brew --prefix)/share/zsh/site-functions")

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

bindkey -v
export EDITOR=nvim
export VISUAL=nvim
export KEYTIMEOUT=1

export HISTCONTROL=ignoredups
export GREP_OPTIONS='--color=always'
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/dsa_id"
export GPG_TTY=$(tty)
export HOMEBREW_GITHUB_API_TOKEN=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
export HOMEBREW_CASK_OPTS="--no-quarantine"
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ENV_HINTS=1
export PYTHONDONTWRITEBYTECODE=1
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt NOCORRECT

alias feh='feh -zZFd'
alias ls='ls -F --color=never'
alias dot='/usr/local/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'

function fdot() {
  rsync -avz -e ssh $1 fsync:dot/$2
}
