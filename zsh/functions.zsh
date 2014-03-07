function mkcd() {
    mkdir -p "$@" && cd "$_";
}


function gitrebase() {
  (git fetch --tags &) &> /dev/null
  git fetch origin;
  git rebase origin/master;
}

function findd() {
  if [[ -z $1 ]]; then
    echo "findd <filename>"
  else
    find . -iname "*$1*"
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

function grepr() {
  if [[ -z $1 ]]; then
    echo "grepr 'phrase'"
  else
    grep -R -i -I "$1" .
  fi
}


# From http://dotfiles.org/~_why/.zshrc
# Sets the window title nicely no matter where you are
function title() {
  # escape '%' chars in $1, make nonprintables visible
  a=${(V)1//\%/\%\%}

  # Truncate command, and join lines.
  a=$(print -Pn "%40>...>$a" | tr -d "\n")

  case $TERM in
  screen)
    print -Pn "\ek$a:$3\e\\" # screen title (in ^A")
    ;;
  xterm*|rxvt)
    print -Pn "\e]2;$2\a" # plain xterm title ($3 for pwd)
    ;;
  esac
}

function tarr() {
  if [[ -z $1 ]]; then
    echo "tarr directory"
  else
    tar cvfz $1.tar.gz $1
  fi
}


function pg() {
  if [[ -z $1 ]]; then
    echo "pg process_name"
  else
    ps axu | grep -i "$1" | grep -v grep
  fi
}


