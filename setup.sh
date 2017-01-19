#!/bin/sh

#### Housekeeping ####
cwd=$(pwd)
sudo apt-get update
sudo apt-get install -f
source ~/.bashrc

#### Google Chrome ####
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm google-chrome-stable_current_amd64.deb
sudo apt-get -f install
cd $cwd

#### Text Editors ####
sudo apt-get install -y vim
sudo apt-get install -f
wget -c https://github.com/atom/atom/releases/download/v1.11.2/atom-amd64.deb
sudo dpkg -i atom-amd64.deb
sudo rm atom-amd64.deb
cd $cwd
sudo apm update
sudo apm install linter
sudo apm install linter-pylint
sudo apm install vim-mode
sudo apm install project-manager
sudo apm install python-tools
sudo apm install python-indent
sudo apm install python-snippets
sudo apm install autocomplete-python

#### GIT ####
sudo apt-get install -y git
sudo apt-get install -fy
git config --global user.name "Mackenzie Drew"
git config --global user.email "mackiedrew@gmail.com"
git config --global push.default matching
git config --global core.editor "vim"

#### JavaScript ####
sudo apt-get install -y npm
sudo apt-get install -f
sudo apt-get install -y nodejs
sudo apt-get install -f
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install -y gulp

#### NPM Modules ####
sudo npm install -g gulp
sudo npm install -g eslint
sudo npm install -g eslint-plugin-babel
sudo npm install -g babel-eslint
sudo npm install -g eslint-config-airbnb
sudo npm install -g eslint-plugin-jsx-a11y
sudo npm install -g eslint-plugin-react
sudo npm install -g eslint-plugin-import

#### Easy Programs ####
sudo apt-get install -y gimp
sudo apt-get install -f
sudo apt-get install -y trash-cli
sudo apt-get install -f
sudo apt-get install -y vlc-nox
sudo apt-get install -f
sudo apt-get install -y audacity
sudo apt-get install -f
sudo apt-get install -y python3-pip
sudo apt-get install -f
sudo apt-get install -y gparted
sudo apt-get install -f
sudo apt-get install -y p7zip-full
sudo apt-get install -f
sudo apt-get install -y virtualbox
sudo apt-get install -f
