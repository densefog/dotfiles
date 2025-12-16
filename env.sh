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
#export PATH=/usr/local/opt/php@5.6/bin:$PATH
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH
# export PATH=~/.asdf/shims:$PATH
# export PATH=/Users/tspruit/.asdf/shims:$PATH
export ERL_AFLAGS="-kernel shell_history enabled"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_151.jdk/Contents/Home"

# . /opt/homebrew/opt/asdf/libexec/asdf.sh

alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/env.sh"
alias rspecf= "rspec --fail-fast"
alias mux="tmuxinator"
alias x="exit"
alias cddate='cd $(date '+%Y-%m-%d')'
alias mkdate='mkdir $(date '+%Y-%m-%d');cddate'
alias mtf='mix test --failed'
# alias pongweb='cd /Users/tspruit/Desktop/Ponglabs/PongWebsite && git wipeout && git pull && npm install && npm run graphql && npm rebuild node-sass && env PUBLIC_URL="" npm run build'
alias ltf='MIX_ENV=test mix list_test_failures'
alias pw='pongweb'
alias ms='iex -S mix phx.server'
alias mc='mix compile'
alias mcc='mix clean;mix compile'
alias mcs='touch lib/ponglabs_broker_web/schema.ex;mix compile'
alias mf='mix format'
alias mt='mix test --exclude opensearch;afplay /System/Library/Sounds/Glass.aiff'
alias mem='mix ecto.migrate'
alias mer='mix ecto.rollback -r Jump.Repo'
alias ltf='mix test.list_failures'
alias mltf='mix test.list_failures'
alias gpo='git pull origin $(git rev-parse --abbrev-ref HEAD)'
alias pretty='cd assets;npm run lint:prettier:fix;cd ..'
#alias lj='cd /Users/tspruit/Desktop/CI/criterion/ponglabs_broker;rm -rf .user_monitor_storage/;mix run lib/one_import/load_jobs.exs'
#alias umv='cd /Users/tspruit/Desktop/CI/criterion/ponglabs_broker;mix run lib/one_import/user_monitor_validation.exs'

# makes an alias but with parameters
function mgm() {
  mix ecto.gen.migration -r Jump.Repo "$@"
}

function alert() {
  "$@" && osascript -e 'tell application "ghostty" to display dialog "Job finished"'
}

# Cheat variables
export CHEAT_COLORS=true
export CHEAT_COLORSCHEME=dark
export DYLD_INSERT_LIBRARIES=

ulimit -n 1024

#alias mkdate="mkdir $(date '+%Y-%m-%d');cd $(date '+%Y-%m-%d')"
#. $HOME/.asdf/asdf.sh
#export PATH="/usr/local/opt/ncurses/bin:$PATH"
#:export KERL_CONFIGURE_OPTIONS="--without-javac --with-ssl=$(brew --prefix openssl)"

#export KERL_CONFIGURE_OPTIONS="--disable-debug --disable-silent-rules --without-javac --enable-shared-zlib --enable-dynamic-ssl-lib --enable-hipe --enable-sctp --enable-smp-support --enable-threads --enable-kernel-poll --enable-wx --enable-darwin-64bit --with-ssl=$(brew --prefix openssl)"

export KERL_BUILD_DOCS="yes"

# Speed up mix compiling
export MIX_OS_DEPS_COMPILE_PARTITION_COUNT=8

# python package manager
# source "$HOME/.rye/env"
