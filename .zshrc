# Path to your oh-my-zsh installation.
export ZSH=/Users/tspruit/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussel"
ZSH_THEME="pygmalion"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git gitfast colored-man-pages colorize bower brew bundler common-aliases osx rails wd sublime tmuxinator mix mix-fast)
#plugins=(git gitfast colored-man colorize bower brew bundler common-aliases osx rails wd zsh-syntax-highlighting sublime tmuxinator mix mix-fast virtualenv virtualenvwrapper)

# User configuration

#export PATH="$PATH:/Users/tspruit/.rvm/gems/ruby-2.2.1/bin:/Users/tspruit/.rvm/gems/ruby-2.2.1@global/bin:/Users/tspruit/.rvm/rubies/ruby-2.2.1/bin:.bin:/usr/local/Cellar/pyenv-virtualenv/20160202/shims:/usr/local/Cellar/pyenv/20160310/libexec:/Users/tspruit/.pyenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tspruit/.rvm/bin:/Users/tspruit/bin:/usr/local/sbin"
export PATH="$PATH:/Users/tspruit/.rvm/gems/ruby-2.2.1/bin:/Users/tspruit/.rvm/gems/ruby-2.2.1@global/bin:/Users/tspruit/.rvm/rubies/ruby-2.2.1/bin:.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/tspruit/.rvm/bin:/Users/tspruit/bin:/usr/local/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Allow noglobbing of commands
unsetopt nomatch

# Add env.sh
. ~/env.sh

fpath=(/usr/local/share/zsh-completions $fpath)

# Node Version Manager
#export NVM_DIR="$HOME/.nvm"
#. "/usr/local/opt/nvm/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
#export PATH="/usr/local/opt/node@10/bin:$PATH"
#export PATH="/usr/local/opt/node@6/bin:$PATH"

. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
