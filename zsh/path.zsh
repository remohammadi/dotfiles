#Set PATH here
export PATH=$HOME/.rvm/bin:/usr/local/bin:/usr/X11/bin:$HOME/git/repo/rrepo:$HOME/code/scripts:$HOME/.dotfiles/bin:$PATH:/opt/local/bin:/opt/local/sbin
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"


#Configure zsh here

#History related options

export OH_MY_ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="kphoen"

export EDITOR='vim'

export GIT_EDITOR=vim

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
