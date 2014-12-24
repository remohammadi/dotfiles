
# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
#alias gd='cdiff -s'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias grom='git reset --hard origin/master'
alias gpom='git pull origin master'
alias gpo='git push origin'
alias gcam='git commit -a -m'
alias gaa='git add -u'
alias gcaa='git commit -a --amend'

function git-reset-hard-head() {
  git stash && git reset --hard HEAD && echo "Changes stashed and reset hard to HEAD"
}
alias grhh='git-reset-hard-head'

alias gd='git d'
alias gdc='git d --cached'

function gitrebase() {
  (git fetch --tags &) &> /dev/null
  git fetch origin;
  git rebase origin/master;
}
