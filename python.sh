#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install python giflib jpeg

sudo easy_install pip

# Upgrade pip itself
sudo pip install --upgrade pip

sudo pip install wheel virtualenvwrapper PIL Pillow

# To upgrade setuptools, which is used by pip
sudo pip install --upgrade setuptools