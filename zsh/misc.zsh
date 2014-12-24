#Autojump stuff
[[ -s $(brew --prefix)/etc/autojump.sh ]] && . $(brew --prefix)/etc/autojump.sh

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  echo "GRCCCC"
  source "`brew --prefix`/etc/grc.bashrc"
fi





fpath=($ZSH/functions $fpath)
autoload -U $ZSH/functions/*(:t)

#add each topic folder to fpath so that they can add functions and completion scripts
for topic_folder ($ZSH/*) if [ -d $topic_folder ]; then  fpath=($topic_folder $fpath); fi;



# if [[ -n $SSH_CONNECTION ]]; then
#   export PS1='%m:%3~$(git_info_for_prompt)%# '
# else
#   export PS1='%3~$(git_info_for_prompt)%# '
# fi

# export LSCOLORS="exfxcxdxbxegedabagacad"
# export CLICOLOR=true

# # don't expand aliases _before_ completion has finished
# #   like: git comm-[tab]
# setopt complete_aliases

# zle -N newtab

# bindkey '^[^[[D' backward-word
# bindkey '^[^[[C' forward-word
# bindkey '^[[5D' beginning-of-line
# bindkey '^[[5C' end-of-line
# bindkey '^[[3~' delete-char
# bindkey '^[^N' newtab
# bindkey '^?' backward-delete-char
