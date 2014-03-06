# Everthing here is executed at the end

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#Export PROMPT here at last
if [[ -n $SSH_CONNECTION ]]; then
  export PROMPT='[%{$fg[green]%}'"$USER"'%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)]
$ '
else
  export PROMPT='[%{$fg[red]%}ankush%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)]
$ '
fi

#rvm related stuff
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set these nice options at last
set +o extended_history
set +o histignorespace
set +o histverify
export HISTFILE=$HOME/.dotfiles/history/history_local
set -o APPEND_HISTORY
export HISTSIZE=50000
export SAVEHIST=50000
set -o HIST_EXPIRE_DUPS_FIRST
set +o extendedhistory
set -o INC_APPEND_HISTORY
