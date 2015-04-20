function findd() {
  if [[ -z $1 ]]; then
    echo "findd <filename>"
  else
    find . -iname "*${1}*"
  fi
}

function findr() {
  if [[ -z $1 ]]; then
    echo "findr <regex>"
  else
    find . -iregex "${1}"
  fi
}

function st() {
  curdir="$PWD"
  while [ "$PWD" != "/" ] && [ ! -e "${PWD}/.git" ]; do
    cd ..;
  done

  if [  -e "${PWD}/.git" ]; then
    open -a SourceTree "$PWD"
  else
    open -a SourceTree
  fi
  cd "$curdir"
  curdir=""
}

function pg() {
  if [[ -z $1 ]]; then
    echo "pg process_name"
  else
    ps axu | grep -i "$1" | grep -v grep
  fi
}

function autocommit() {
  git add -u
  git status -sb | grep -v ^## | grep -v '^??' > /tmp/gitsm
  git commit --file=/tmp/gitsm
  rm -f /tmp/gitsm
}

alias agp='autocommit && gp'


function s() {
  if [[ -z $1 ]]; then
    subl --new "$PWD"
  else
    subl --new "$1"
  fi
}

function grepr() {
  if [[ -z $1 ]]; then
    echo "grepr <search-term>"
  else
    grep -R "$1" .
  fi
}
