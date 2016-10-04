#!/bin/bash
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing Wget"
brew install wget

echo "Installing Zshell"
brew install zsh

echo "Installing Iterm2"
brew install Caskroom/cask/iterm2

echo "downloading solarized themes for iterm"
#Install the 2 solarized themes for iterm2 <- Manual
wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Dark.itermcolors
wget https://raw.githubusercontent.com/altercation/solarized/master/iterm2-colors-solarized/Solarized%20Light.itermcolors
read -rsp $'Import the itermcolors files in item by executing them...\n' -n1 key


#Install oh-my-zsh
echo "Installing os-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install nice font
echo "Installing Meslo font"
wget https://github.com/powerline/fonts/raw/master/Meslo/Meslo%20LG%20M%20DZ%20Regular%20for%20Powerline.otf
read -rsp $'Import the font by opening it and installing the font...\n' -n1 key

#Install autojump
brew install autojump

#Install sourcetree
brew install Caskroom/cask/sourcetree
