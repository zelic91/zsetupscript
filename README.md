# zsetupscript
Setup useful development tools for your OSX.

*Update*: Now there's a script for setting up a new Ubuntu RoR server :D

## Why?
Everytime I fresh install OSX, I have to waste a lot of time on installing stuff (I'm a mobile and web developer). Also, when I fire up an EC2/Droplet instance, I have to follow some guides which take time. As you might guess, I'm lazy, that's why I created this script to help installing stuff easier.

## How?

1. Save the file for your platform:
  a. [MacOS](https://raw.githubusercontent.com/zelic91/zsetupscript/master/setup_core.sh) as setup_script.sh (or whatever you want it to be)

  b. [Ubuntu](https://raw.githubusercontent.com/zelic91/zsetupscript/master/ubuntu_setup.sh) as setup_script.sh (or whatever you want it to be)
2. Make usre the file is executable by running `chmod +x setup_core.sh`.
3. `./setup_core.sh`.
4. Feel fresh.

## Included tools?

### MacOS
- [x] XCode Command Line Tools
- [x] Homebrew
- [x] Git
- [x] RVM
- [x] Ruby on Rails
- [x] NodeJS
- [x] Bower
- [x] Postgres
- [x] CocoaPods
- [x] React Native

### Ubuntu
- [x] RVM
- [x] NodeJS
- [x] Bundler
- [x] Ruby
- [x] PostgreSQL
- [x] ImageMagick
