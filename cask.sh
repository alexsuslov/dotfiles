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

brew cask install acorn
brew cask install air-video-server-hd
brew cask install airmail-amt
brew cask install atom
brew cask install audio-hijack-pro
brew cask install audiobook-builder
brew cask install autopano-pro
brew cask install brackets
brew cask install caffeine
brew cask install cloudapp
brew cask install coda
brew cask install dash
brew cask install disk-inventory-x
brew cask install divvy
brew cask install dropbox
brew cask install fantastical
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install iterm2
brew cask install mongohub
brew cask install omnifocus
brew cask install omnigraffle
brew cask install one-password
brew cask install rdio
brew cask install sequel-pro
brew cask install skype
brew cask install sourcetree
brew cask install sublime-text
brew cask install the-unarchiver
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

# Remove outdated versions from the cellar.

brew cleanup && brew cask cleanup
