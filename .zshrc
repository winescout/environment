# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Fastlane for app deployment
export PATH="$HOME/.fastlane/bin:$PATH"

# android build
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export ANDROID_HOME=~/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdn8="cd ~/Projects/notch8/"
alias cdl="cd ~/Projects/notch8/curriculum/2019-alpha"
alias cdst="cd ~/Projects/notch8/shoptab/fb_products"
alias cdle="cd ~/Projects/notch8/learn/webapp"
alias cdtc="cd ~/Projects/notch8/tctrac"
alias cdmh="cd ~/Projects/notch8/moishehouse"
alias sshsts="ssh deploy@174.143.152.215"
alias sshstp="ssh deploy@23.253.105.142"
alias sshstb="ssh deploy@192.237.207.10"
alias ll="ls -lah"
alias emacs="/usr/local/bin/emacs"
alias gbv="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'"

#docker
alias dc="docker-compose"
alias dsa="docker stop $(docker ps -q)"
alias de="docker exec "
alias sc="stack_car "
alias sce="stack_car exec "
alias dls='docker ps'
alias dstop='docker stop $(docker ps -aq)'
alias dclean='docker ps -aq --no-trunc -f status=exited | xargs docker rm'

#git
alias gcpc='git cherry-pick --continue'
alias gmv="git mv"
alias gb="git branch -avv"
alias gbd!="git branch -D"

#Ruby
alias rake='noglob rake'
alias be="bundle exec "

#Tmux
alias tls='tmux ls'
alias ta='tmux attach -t '
alias tn='tmux new -s '

#Organize mode in Atom
alias gdo="git diff -- . ':(exclude)dev.org'"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/mclark/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
source /home/ubuntu/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
