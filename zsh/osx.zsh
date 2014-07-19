#OS X specific

# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  source `brew --prefix`/etc/grc.bashrc
fi

#Autojump init
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh


#Python 2 and Python 3
function py2() {
  export PATH="/usr/local/bin/":${PATH}
  alias python="/usr/local/bin/python"
}

function py3() {
  export PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:"$PATH
  alias python='python3.3'
}

export JAVA_HOME=`/usr/libexec/java_home`

eval "$(pyenv init -)"

alias updatedb="/usr/libexec/locate.updatedb"

alias pew='say -r 650 "pew, pew, pew\!, pew, pew\!"'
