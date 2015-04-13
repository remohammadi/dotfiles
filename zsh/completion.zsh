# Everthing here is executed at the end

# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

#Export PROMPT here at last
setopt prompt_subst
if [[ -n $SSH_CONNECTION ]]; then
  export PROMPT='[%{$fg[green]%}'"$USER"'%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)]
$ '
else
  if [[ $USER == "ankushagarwal" ]]; then
      export PROMPT='[%{$fg[red]%}ankush%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)]
$ '
  else
      export PROMPT='[%{$fg[red]%}${USER}%{$reset_color%}@%{$fg[magenta]%}%m%{$reset_color%}:%{$fg[blue]%}%~%{$reset_color%}$(git_prompt_info)]
$ '
  fi
fi

#pyenv and rbenv should be at last because they modify the path variable
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
RBENV_ROOT=/usr/local/var/rbenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_ROOT=/usr/local/opt/pyenv

#Override oh-my-zsh, that's why this is at the end
alias d=docker

# Set these nice options at last

source ${0:a:h}/history_options
