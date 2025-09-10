#
# ~/.bashrc
#

source /usr/share/git/completion/git-completion.bash
source /usr/share/bash-completion/bash_completion

export VISUAL=nvim
export EDITOR="$VISUAL"
export QT_QPA_PLATFORM=xcb



# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups

HISTSIZE=2000
HISTFILESIZE=2000

shopt -s histappend
shopt -s autocd

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export PS1='\[\e[0;37m\]\u\[\e[0;36m\]@\[\e[0;37m\]\h\[\e[0;36m\]\w \[\e[0;37m\]$ \[\e[1;34m\]❯\[\e[0m\] '

export LS_COLORS="di=38;5;33:ln=38;5;75:so=38;5;108:pi=38;5;166:ex=38;5;208:bd=38;5;75:cd=38;5;75:su=38;5;166:sg=38;5;166:tw=38;5;33:ow=38;5;166:fi=38;5;254:*.rpm=38;5;141:*.deb=38;5;141:*.tar=38;5;141:*.zip=38;5;141:*.jpg=38;5;203:*.png=38;5;203:*.mp3=38;5;203:*.mp4=38;5;203:*.pdf=38;5;135:*.appimage=38;5;208"



