alias reload!='. ~/.zshrc'
alias pingg='ping www.google.com'

alias gitk='gitk &> /dev/null'

alias scp='scp -o StrictHostKeyChecking=no'
alias ssh='ssh -A -o StrictHostKeyChecking=no'


alias gitdiff='git difftool -t opendiff -y &> /dev/null'

alias mvne="mvn eclipse:clean; mvn -U eclipse:eclipse;"
alias mvnc="mvn -U clean compile"

alias l='ls -lrth'
alias la='ls -lrtha'
alias lh='ls -ld .??*'
alias ld="ls -l | egrep '^d'"

alias s="subl ."
alias a="atom"
alias dotfiles="atom  ~/.dotfiles"


# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias tial='tail'

alias aws='ssh 54.215.16.177'
alias ankush='ssh ankush.io'

alias icurl='curl -I'
alias v="vim"
alias vi="vim"

alias puppetnow="ssh -t ankush.io 'cd /var/vagrant; sudo git pull; sudo rsync -v --delete -a /var/vagrant/vagrant-ghost/puppet/ankushio/ /etc/puppet/modules/ankushio; sudo puppet apply -v /etc/puppet/modules/ankushio/manifests/main.pp'"

alias dnsflush='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

