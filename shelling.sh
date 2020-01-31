#!/bin/bash

function install_homebrew(){
  #If "$(which brew)" returns a non 0 exit then install homebrew
   if test ! $(which brew); then
    echo "Installing homebrew"

    ruby -e "$(curl -fsSL \
      https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew update
  fi

}
function install_iterm2(){
 brew cask install iterm2
}

function install_tldr(){
  #great supplement to man pages that focuses on acessible definitions and examples, yay!
  brew install tldr
}

function install_zsh(){
 brew install zsh
}


function install_oh_my_zsh(){
  #curl  -s = silent, -f downloads the oh-my-zsh install script
  # passed expanded value of the script to sh as text to be executed 
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

# # # Add setup steps below here!
install_homebrew
install_iterm2
install tldr
install_zsh
install_oh_my_zsh

