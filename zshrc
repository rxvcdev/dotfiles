export TERM='xterm-256color'
export NCURSES_NO_UTF8_ACS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR=vim

ZSH=$HOME/.oh-my-zsh
#ZSH_THEME='robbyrussell'
ZSH_THEME='af-magic'
CASE_SENSITIVE=true
COMPLETION_WAITING_DOTS=true

plugins=(git tmux)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

. $ZSH/oh-my-zsh.sh

unsetopt auto_name_dirs
alias emacs='emacs -nw'

# Allow Ctrl-s in vim
stty -ixon

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/
