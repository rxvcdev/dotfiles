export TERM='xterm-256color'
export NCURSES_NO_UTF8_ACS=1
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

ZSH=$HOME/.oh-my-zsh
ZSH_THEME='robbyrussell'
CASE_SENSITIVE=true
COMPLETION_WAITING_DOTS=true

plugins=(git tmux)

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

. $ZSH/oh-my-zsh.sh

if [[ $(uname) == 'Linux' ]] ; then
  export LINUX=1
else
  export OSX=1
fi

[[ $OSX == '1' ]] && export PATH=/usr/local/bin:$PATH

export ANT_ARGS='-logger org.apache.tools.ant.listener.AnsiColorLogger'
export EDITOR=vim

unsetopt auto_name_dirs
alias emacs='emacs -nw'

[[ $OSX == '1' ]] && alias o='open'
[[ $LINUX == '1' ]] && alias o='xdg-open'

# Allow Ctrl-s in vim
stty -ixon

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/
