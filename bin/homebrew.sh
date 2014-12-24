#!/bin/bash
export PATH=$HOME/.pyenv/shims:$HOME/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/X11/bin:$HOME/.dotfiles/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
brew update
brew list | sort > $HOME/.dotfiles/brew/brew-list
brew cask list | sort > $HOME/.dotfiles/brew/brew-cask-list
