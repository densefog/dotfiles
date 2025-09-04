# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

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

# plugins=(git gitfast colored-man-pages colorize bower brew bundler macos rails wd sublime tmuxinator mix mix-fast asdf virtualenv)
plugins=(git gitfast colored-man-pages colorize bower brew macos wd sublime tmuxinator mix mix-fast virtualenv)

# User configuration

export PATH="$HOME/bin:.bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin:/usr/local/sbin:$PATH"

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

fpath=(/usr/local/share/zsh-completions $fpath)

# Node Version Manager
#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#export PATH="/usr/local/opt/postgresql@11/bin:$PATH"
#export PATH="/usr/local/opt/node@10/bin:$PATH"
#export PATH="/usr/local/opt/node@6/bin:$PATH"

# For compilers to find zlib you may need to set:
export LDFLAGS="${LDFLAGS} -L/usr/local/opt/zlib/lib"
export CPPFLAGS="${CPPFLAGS} -I/usr/local/opt/zlib/include"

# For pkg-config to find zlib you may need to set:
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH} /usr/local/opt/zlib/lib/pkgconfig"
#export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(/opt/homebrew/bin/brew shellenv)"

export CFLAGS="-O2 -g -fno-stack-check"
export KERL_CONFIGURE_OPTIONS="--disable-hipe --with-ssl=$(brew --prefix openssl@3) --with-wx-config=$(brew --prefix wxwidgets)/bin/wx-config --with-odbc=$(brew --prefix unixodbc)"
export CPPFLAGS="-I$(brew --prefix unixodbc)/include"
export LDFLAGS="-L$(brew --prefix unixodbc)/lib"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

export NEO4J_ACCEPT_LICENSE_AGREEMENT=yes

export PATH=/Users/tspruit/.local/bin:$PATH

#export GITHUB_TOKEN=op://development/GitHub/credentials/personal_token
#export ANTHROPIC_API_KEY="$(op read "op://Private/Jump Claude API Key/credential")"
#export GROQ_API_KEY="$(op read "op://Private/Anthropic Claude API Key/credential")"
#export OPENAI_API_KEY="$(op read "op://Private/Anthropic Claude API Key/credential")"


# Add env.sh
. ~/env.sh
# source /Users/tspruit/.config/op/plugins.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tspruit/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tspruit/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tspruit/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tspruit/google-cloud-sdk/completion.zsh.inc'; fi

# completion for kubectl
source <(kubectl completion zsh)

# bun completions
[ -s "/Users/tspruit/.bun/_bun" ] && source "/Users/tspruit/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
alias claude="SHELL=/bin/bash /Users/tspruit/.claude/local/claude"
eval "$(/Users/tspruit/.local/bin/mise activate zsh)"

# node
export PATH=$PATH:$(npm get prefix)/bin
