#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update && brew upgrade brew-cask

# Upgrade any already-installed formulae.
brew upgrade

export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew install caskroom/cask/brew-cask

#############################################################################
# Quick look plugins                                                        #
#############################################################################

brew cask install qlcolorcode
brew cask install qlstephen
brew cask install qlmarkdown
brew cask install quicklook-json
brew cask install qlprettypatch
brew cask install quicklook-csv
brew cask install betterzipql
brew cask install webp-quicklook
brew cask install suspicious-package

#############################################################################
# App Installation                                                        #
#############################################################################
brew cask install acorn
brew cask install air-video-server-hd
brew cask install airmail
brew cask install alfred
brew cask install android-file-transfer
brew cask install appcleaner
brew cask install asepsis
brew cask install atom
brew cask install audio-hijack-pro
brew cask install audiobook-builder
brew cask install autopano-pro
brew cask install brackets
brew cask install caffeine
brew cask install caffeine
brew cask install cheatsheet
brew cask install cloudapp
brew cask install coda
brew cask install dash
brew cask install disk-inventory-x
brew cask install divvy
brew cask install doubletwist
brew cask install dropbox
brew cask install dropbox
brew cask install fantastical
brew cask install firefox
brew cask install flux
brew cask install github
brew cask install google-chrome
brew cask install google-drive
brew cask install google-hangouts
brew cask install iterm2
brew cask install latexian
brew cask install mongohub
brew cask install omnifocus
brew cask install omnigraffle
brew cask install one-password
brew cask install onepassword
brew cask install pdftk
brew cask install rdio
brew cask install sequel-pro
brew cask install skype
brew cask install sourcetree
brew cask install spectacle
brew cask install sublime-text
brew cask install superduper
brew cask install the-unarchiver
brew cask install totalfinder
brew cask install transmission
brew cask install vagrant
brew cask install valentina-studio
brew cask install virtualbox
brew cask install vlc
brew cask install mysqlworkbench

# Remove outdated versions from the cellar.

brew cleanup && brew cask cleanup
