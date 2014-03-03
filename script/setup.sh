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
sudo chsh -s /bin/zsh $USER
rm -rf .dotfiles &> /dev/null || true
rm -rf .oh-my-zsh &> /dev/null || true
git clone https://github.com/ankushagarwal/dotfiles.git .dotfiles
cd .dotfiles
yes o | script/bootstrap

