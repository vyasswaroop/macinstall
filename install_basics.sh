#!/bin/bash

# Install brew package
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zshell
brew install zsh

# Install Ohmyzshtheme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install VSCode
brew cask install visual-studio-code

# Install Python2 and Python3
brew install python@2
brew install python3

# Install Virtualenv and virtualenv wrapper
brew install virtualenv
brew install virtualenvwrapper
cat >>~/.zshrc <<EOL
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
EOL

# Install Google chrome
brew cask install google-chrome

# Install Slack app
brew cask install slack

# Install Docker
brew cask install docker
