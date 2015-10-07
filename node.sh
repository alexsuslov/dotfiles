#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

brew install node



# coffee
npm install -g coffee-script
npm -g install js2coffee
# jade
npm -g install jade
npm -g install html2jade

npm install -g less
npm install -g yo
npm install -g gulp
npm install -g bower

# jasmine
# http://jasmine.github.io/2.1/introduction.html
npm install -g jasmine

# mocha
npm install -g mocha
npm install -g mocha-phantomjs
npm install -g generator-mocha-amd
# grunt
npm install -g grunt-cli
# express
npm install -g generator-express
npm install -g generator-node-express
# angular
npm install -g generator-angular
npm install -g generator-angular-fullstack
npm install -g generator-gulp-angular
# webapp
npm install -g generator-gulp-webapp
npm install -g generator-webapp
# mobile
npm install -g yeoman/generator-mobile
# chrome
npm install -g generator-chrome-extension
# ember
npm install -g generator-ember
# backbone
npm install -g generator-backbone
npm install -g generator-marionette
npm install -g generator-marionette-coffee
# clean
npm cache clean
