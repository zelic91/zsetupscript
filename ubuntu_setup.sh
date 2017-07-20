#!/bin/bash

sudo apt-get update

sudo apt-get install git -y
sudo apt-get install openjdk-7-jdk -y
sudo apt-get install nginx -y
sudo apt-get install nodejs -y
sudo apt-get install libmagickcore-dev libmagickwand-dev libmagic-dev -y
sudo apt-get install imagemagick -y
sudo apt-get install postgresql postgresql-contrib libpq-dev -y

sudo useradd -d /home/deploy -m deploy

sudo passwd deploy

echo "Please append: deploy ALL=(ALL:ALL) ALL to the end of the file."

sudo visudo

sudo -u deploy -H bash -c "gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable && . /home/deploy/.rvm/scripts/rvm && rvm install ruby && gem install bundler --no-ri --no-rdoc"

sudo -u deploy -H bash -c "mkdir ~/project"
sudo -u deploy -H bash -c "mkdir -p ~/project/shared/config"
sudo -u deploy -H bash -c "touch ~/project/shared/config/database.yml"
sudo -u deploy -H bash -c "touch ~/project/shared/config/application.yml"
