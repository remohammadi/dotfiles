
# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
#alias gd='cdiff -s'
alias gc='git commit --verbose'
alias gca='git commit --verbose -a'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias grom='git reset --hard origin/master'
alias gpo='git push origin'
alias gcam='git commit -a -m'
alias gaa='git add -u'
alias gcaa='git commit -a --amend'
alias gh='git hist'
function git-reset-hard-head() {
  git stash && git reset --hard HEAD && echo "Changes stashed and reset hard to HEAD"
}
alias grhh='git-reset-hard-head'

alias gd='git d'
alias gdc='git d --cached'

alias gfa='git fetch --all && git fetch --tags'
function gitrebase() {
  if [[ -z $1 ]]; then
    remote=origin
  else
    remote=$1
  fi
  git fetch --all && git fetch --tags;
  git rebase ${remote}/master;
}
unalias gp
function gp() {
  branch=`git rev-parse --abbrev-ref HEAD`
  if [[ -z $1 ]]; then
    remote=origin
  else
    remote=$1
  fi
  git push $remote $branch:$branch
}

function gpf() {
  branch=`git rev-parse --abbrev-ref HEAD`
  if [[ -z $1 ]]; then
    remote=origin
  else
    remote=$1
  fi
  git push -f $remote $branch:$branch
}

function gitdelete() {
  if [[ -z $1 ]]; then
    echo "Please enter the name of branch to delete"
  else
    git branch -D $1
    git branch -Dr origin/$1
  fi
}

function gitsquash() {
  echo "Latest commit id is `git rev-parse HEAD`"
  if [[ -z $1 ]]; then
    echo "Please enter the number of commits to squash"
  else
    git reset --soft HEAD~$1 &&
    git commit --edit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"
  fi
}

function gitmerge() {
  git fetch origin master
  commit_count=`git rev-list origin/master..HEAD --count`
  branch=`git rev-parse --abbrev-ref HEAD`
  echo
  echo "You are on branch '${branch}'\n"
  if [[ ${commit_count} -gt 1 ]]; then
    echo "You are ${commit_count} commits ahead of origin/master\n"
    echo -n "Do you want squash your ${commit_count} commits ? "
    read confirm
    if [ "$confirm" = "yes" ]; then
      git reset --soft HEAD~${commit_count} &&
      git commit --edit -m"$(git log --format=%B --reverse HEAD..HEAD@{1})"
    else
      return
    fi
  elif [[ ${commit_count} -eq 1 ]]; then
    echo "You are ${commit_count} commit ahead of origin/master\n"
  elif [[ ${commit_count} -eq 0 ]]; then
    echo "You are ${commit_count} commits ahead of origin/master\n"
    return
  fi
  echo -n "Are you sure you want to merge ${branch} ? "
  read confirm
  if [ "$confirm" = "yes" ]; then
    git rebase origin/master && echo "Rebased the branch from origin/master" && \
    git push --force origin ${branch}:${branch} && echo "Force pushed ${branch}" && \
    git checkout master && echo "Checked out master" && \
    git reset --hard origin/master && echo "Reset master to origin/master" && \
    git merge --ff-only ${branch} && echo "Merged ${branch} into master" && \
    git push origin master:master && echo "Pushed master to origin"
    echo -n "Do you want to delete the branch : ${branch} ? "
    read confirm
    if [ "$confirm" = "yes" ]; then
      git branch -D ${branch} && \
      git branch -Dr origin/${branch} && \
      git push origin :${branch}
    fi
  fi
}

function gpom() {
  branch=`git rev-parse --abbrev-ref HEAD`
  git push origin "${branch}":master
  unset branch
}

if [[ -e /Users/ankushagarwal/.pyenv/shims/cdiff ]]; then
  alias gd='/Users/ankushagarwal/.pyenv/shims/cdiff -s'
  alias gdc='/Users/ankushagarwal/.pyenv/shims/cdiff -s --cached'
fi
