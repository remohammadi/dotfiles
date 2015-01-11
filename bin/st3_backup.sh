#!/usr/local/bin/zsh
set -x
. /Users/ankushagarwal/.zshrc
cd "/Users/ankushagarwal/Library/Application Support/Sublime Text 3"
git add .
git commit -am `date +%s`
git push -u origin master
