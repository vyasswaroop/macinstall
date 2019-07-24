#!/bin/bash

# Install brew package
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setting up Terminal
brew cask install iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &&
source ~/.zshrc

# Install python and virtualenvironment
brew install python@2
brew install python3
brew install virtualenv
brew install virtualenvwrapper
cat >>~/.zshrc <<EOL
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
EOL
brew install awscli

# Install work utilities
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install slack
brew cask install docker
brew cask install alfred
brew cask install insomnia
brew cask install tunnelblick
brew cask install ngrok
brew cask install virtualbox
brew cask install vagrant
brew cask install authy
brew cask install vlc
