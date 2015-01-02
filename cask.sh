#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew install caskroom/cask/brew-cask
brew cask install dropbox
brew cask install one-password
brew cask install iterm2

brew cask install caffeine
brew cask install sequel-pro
brew cask install virtualbox
brew cask install vagrant
brew cask install the-unarchiver
brew cask install vlc
brew cask install google-chrome
brew cask install skype
brew cask install transmission
brew cask install dash
brew cask install cloudapp
# brew cask install postgres
brew cask install divvy
brew cask install rdio
brew cask install github
brew cask install disk-inventory-x
brew cask install sourcetree
brew cask install fantastical
brew cask install omnifocus
brew cask install omnigraffle
brew cask install sublime-text
brew cask install firefox
brew cask install airmail-amt
brew cask install mongohub
# Remove outdated versions from the cellar.

brew cleanup