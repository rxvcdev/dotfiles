export TERM='xterm-256color'
export NCURSES_NO_UTF8_ACS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

setopt histignorealldups share_history prompt_subst
unsetopt auto_name_dirs
autoload -Uz compinit
fpath+=~/.zfunc
compinit
bindkey -e

# Allow Ctrl-s in vim
stty -ixon

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
#Prompt color and model
PROMPT="%F{240}\$(repeat \$COLUMNS printf '·')%f"
PROMPT+='%B%F{green}%n%F{green}:%F{blue}%(3~|…|)%2~%F{green} *-> %b%f'

unsetopt auto_name_dirs

#Alias to start emacs in terminal window
alias emacs='emacs -nw'

#Java export /Library/Java/JavaVirtualMachines/
export JAVA_HOME=$(/usr/libexec/java_home -v 9)
export PATH=$JAVA_HOME/bin:$PATH

#Terminal Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'


#Node Version Manager installed with brew install nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Load tmux at the beginning
if [ "$TMUX" = "" ]; then tmux; fi

#Go
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

#Aliases

#Git
alias gp='git pull'
alias gpr='git pull --rebase'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias ga='git add'
alias gst='git status'
alias gpu='git push'
alias glog='git log'
alias gshow='git show'

#Kubectl alias
alias k='kubectl'
alias kcv='kubectl config view'
alias kcc='kubectl config use-context'

#direnv configuration - install brew direnv
eval "$(direnv hook zsh)"

#brew install zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#brew tap sambadevi/powerlevel9k
#brew install powerlevel9ksource /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

#kubectl autocompletion
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

#powerlevel9k customization
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs kubecontext aws nvm java_version node_version)
export POWERLEVEL9K_KUBECONTEXT_BACKGROUND='241'
export POWERLEVEL9K_JAVA_VERSION_BACKGROUND='245'
export POWERLEVEL9K_NODE_VERSION_BACKGROUND='241'
export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
export POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="↳ "
