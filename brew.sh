#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` and `/usr/local/bin/zsh` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
brew install bash-completion2

brew install zsh

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install other useful binaries.
brew install dark-mode
brew install git
brew install git-lfs
brew install p7zip
brew install rename
brew install tree

# Install Node dependencies
brew install nvm
brew install node
brew install yarn

# Install Python dependencies
brew install python
brew install python3

# install commong dbs
brew install postgres
brew install mysql

# macos stuff
brew install dockutil

# Remove outdated versions from the cellar.
brew cleanup

# Add cask
brew tap homebrew/cask
# brew cask install gimp
brew install java iterm2 sublime-text sshfs google-chrome notion
brew install spotify bitwarden telegram signal fathom visual-studio-code arc

# install appstore cli & apps
brew install mas
mas install 965442961  # Screenie - Screenshot Utitlity

# When only running brew.sh and not the other commands enable these lines for key settings

# override macos settings
# defaults write NSGlobalDomain KeyRepeat -int 1 # speed up key repeat rate
# defaults write -g InitialKeyRepeat -int 15 # delay until key repeat 225 ms
# source ~/.bash_profile;
