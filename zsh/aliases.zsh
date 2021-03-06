alias reload='. ~/.zshrc'

alias pingg='ping www.google.com'

alias scp='scp -o StrictHostKeyChecking=no'
alias ssh='ssh -A -o StrictHostKeyChecking=no'

alias l='ls -lrth'
alias la='ls -lrtha'
alias lh='ls -ld .??*'
alias ld="ls -l | egrep '^d'"

alias dotfiles="subl  ~/.dotfiles"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias tial='tail'

alias aws2='ssh 54.176.43.199'
alias ankush='ssh ankush.io'

alias v="vim"
alias vi="vim"

alias dnsflush='sudo discoveryutil udnsflushcaches'
alias gerp='grep'
alias randomizeWiFi='sudo spoof-mac randomize Wi-Fi'

alias locate="/usr/bin/locate"
alias updatedb="/usr/libexec/locate.updatedb"

alias dott="cd ${HOME}/.dotfiles"
alias intellij-idea="'/Applications/IntelliJ IDEA 14 CE.app/Contents/MacOS/idea'"

alias hosts='vim /etc/hosts'

alias idea='intellij-idea $PWD'

alias vms='vboxmanage list runningvms'
