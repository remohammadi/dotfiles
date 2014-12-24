#!/bin/bash
if ! which zsh
then
  echo "/bin/zsh does not exist. Exiting."
  exit 1
fi
if ! which git
then
  echo "git does not exist. Exiting."
  exit 1  
fi
cd $HOME
if which /usr/local/bin/zsh; then
	sudo chsh -s /usr/local/bin/zsh $USER
else
	sudo chsh -s /bin/zsh $USER	
fi
mkdir -p $HOME/.history-directory
rm -rf .dotfiles &> /dev/null || true
rm -rf .oh-my-zsh &> /dev/null || true
git clone https://github.com/ankushagarwal/dotfiles.git .dotfiles
cd .dotfiles
yes o | script/bootstrap

