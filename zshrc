# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="kzsh"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# CLI Aliases
#
# Just a bunch of CLI aliases that I prefer.  If you'd like to add your own custom ones,
# consider using the "custom" file so they don't get nuked if you ever git pull ;)

# cd
alias ..='cd ..'

# ls
alias ls="ls -FG"
alias l="ls -lGh"
alias ll="ls -lah"

# misc.
alias df="df -h"
alias psx="ps ax | grep $1"
alias k="clear"
alias v="vim"
alias prod_ssh="ssh -i ~/.ssh/prod_key.pem $1"

# git

# If the "hub" command's installed where we expect it, set up the alias
# if [ "\$(which hub)" = "/usr/local/bin/hub" ];
# then
#        alias git=hub
# fi

# the other git stuff
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias changelog='git log `git log -1 --format=%H -- CHANGELOG*`..; cat CHANGELOG*'

alias docker_eval='eval "$(docker-machine env default)"'

EDITOR="~/bin/subl"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew gem rails rake autojump safe-paste bundler rbenv)

# Customize to your needs...
export PATH=$HOME/bin:/usr/local/bin:$PATH:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

source /opt/boxen/env.sh
source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
