#!/bin/bash

chsh -s /bin/bash
echo "export BASH_SILENCE_DEPRECATION_WARNING=1" >> .bash_profile

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git

git config --global user.name "Ian Jones"
git config --global user.email imjones667@gmail.com

git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh

source ~/.bash_profile

brew install --cask shiftit

brew install --cask visual-studio-code