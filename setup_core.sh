#!/bin/bash
# Setup core tools: Git, Homebrew, RVM, ...
xcode-select --install

function check_and_install {
  if command -v $1 >/dev/null; then
		echo $1 existing.
	else
		echo Installing $1 ...
		$2
		echo Done!
	fi
}

# Homebrew
check_and_install brew `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

# Git
check_and_install git `brew install git`

# RVM
check_and_install rvm `\curl -L https://get.rvm.io | bash -s stable`

# Ruby on Rails
rvm use ruby --install --default
sudo gem install rails --no-ri --no-rdoc

# NodeJS
check_and_install node `brew install node`

# Bower
check_and_install bower `npm install -g bower`

# Postgres
check_and_install posgres `brew install postgres`
