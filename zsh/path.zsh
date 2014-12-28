#Set PATH here
export PATH=/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$HOME/.dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/go/bin
export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"

# Do Oh My ZSH stuff
export OH_MY_ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="kphoen"
export ZSH=$HOME/.oh-my-zsh
plugins=(autojump git)
. $HOME/.oh-my-zsh/oh-my-zsh.sh
export ZSH=~/.dotfiles

#Configure zsh here
setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
unsetopt correct
unsetopt correct_all
setopt auto_cd
setopt BASH_AUTO_LIST
