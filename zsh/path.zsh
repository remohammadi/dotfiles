#Set PATH here
export PATH=$HOME/.rvm/bin:/usr/local/bin:/usr/X11/bin:$HOME/git/repo/rrepo:$HOME/code/scripts:$HOME/.dotfiles/bin:$PATH
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"


#Configure zsh here

#History related options
export STSIZE=5000000
export SAVEHIST=5000000
export HISTFILE=~/.history
export HISTCONTROL=ignoredups
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY # adds history incrementally
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH

export OH_MY_ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="kphoen"

export EDITOR='vim'

export HADOOP_HOME=$HOME/hadoop/hadoop-0.20/hadoop-0.20/hadoop-0.20
export HBASE_HOME=$HOME/hadoop/hbase-0.20/hbase-0.20
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
