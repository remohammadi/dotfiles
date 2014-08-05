#Set PATH here
export PATH=/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$HOME/git/repo/rrepo:$HOME/code/scripts:$HOME/.dotfiles/bin:$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

#Postgres
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

#Configure zsh here

#History related options

export OH_MY_ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="kphoen"

export EDITOR='mvim'

export GIT_EDITOR=mvim

export amazon_pc="54.215.16.177"

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
unsetopt correct
unsetopt correct_all
setopt auto_cd
setopt BASH_AUTO_LIST
