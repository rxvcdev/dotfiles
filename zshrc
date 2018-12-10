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

#Java export
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$JAVA_HOME/bin:$PATH

#Terminal Color
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

#Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
#BASE16_SHELL=$(dirname ${(%):-%x})
#[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Load tmux at the beginning
if [ "$TMUX" = "" ]; then tmux; fi

#Go
export GOPATH=$HOME/go-workspace # don't forget to change your path correctly!
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

#Aliases
alias gp='git pull'
alias gpr='git pull --rebase'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias ga='git add'
alias gst='git status'
alias gpu='git push'


#Delaware ENV variables DELETE IT
export GROUP1001_CORE_PATH=/Users/rvallejo/Thoughtworks/Delaware/core
export PYTHONPATH=/usr/local/bin/python3
export GROUP1001_VAULT_PASSWORD_PATH=/Users/rvallejo/Thoughtworks/Delaware/secrets.vault.password.file
export GROUP1001_TEAMCITY_PEM_PATH=/Users/rvallejo/Thoughtworks/Delaware/
