#!/bin/zsh
export USER_NAME="Troy Spruit"

export SHELL_SESSION_HISTORY=0
export HISTFILESIZE=1000000000
export HISTSIZE=1000000
export EDITOR=vim
export DISABLE_SPRING=true

function repeat() {
    number=$1
    shift
    for n in $(seq $number); do
      $@
    done
}
#export WORKON_HOME=~/Envs
#source /usr/local/bin/virtualenvwrapper.sh
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

#export WORKON_HOME=$HOME/Envs
#export PROJECT_HOME=$HOME/Desktop/Playground/SD
#source /usr/local/bin/virtualenvwrapper.sh
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv

#export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

#if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
#pyenv virtualenvwrapper

# before path to handle conflict with image magick
export PATH=/Applications/Araxis\ Merge.app/Contents/Utilities:$PATH
export PATH=/usr/local/opt/php@5.6/bin:$PATH
export ERL_AFLAGS="-kernel shell_history enabled"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home"

#source /usr/local/opt/asdf/asdf.sh

alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/env.sh"
alias rspecf= "rspec --fail-fast"
alias mux="tmuxinator"
alias x="exit"
alias cddate='cd $(date '+%Y-%m-%d')'
alias mkdate='mkdir $(date '+%Y-%m-%d');cddate'
alias mtf='mix test --failed'
alias ltf='MIX_ENV=test mix list_test_failures'
alias pongweb='cd /Users/troys/Desktop/CI/criterion/PongWebsite;git wipeout;git pull;npm install;npm run graphql;npm start'
alias lj='cd /Users/troys/Desktop/CI/criterion/ponglabs_broker;rm -rf .user_monitor_storage/;mix run lib/one_import/load_jobs.exs'
alias umv='cd /Users/troys/Desktop/CI/criterion/ponglabs_broker;mix run lib/one_import/user_monitor_validation.exs'

# Cheat variables
export CHEAT_COLORS=true
export CHEAT_COLORSCHEME=dark

#alias mkdate="mkdir $(date '+%Y-%m-%d');cd $(date '+%Y-%m-%d')"
#. $HOME/.asdf/asdf.sh
#export PATH="/usr/local/opt/ncurses/bin:$PATH"
