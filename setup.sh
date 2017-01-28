#!/bin/sh

#### Gather User Data ####
echo -n 'Enter your GIT name: '
read git_name
echo -n 'Enter your GIT email: '
read git_email

#### Housekeeping ####
cwd=$(pwd)

apt-get update
apt-get install -f
source ~/.bashrc

#### Power ####
gsettings set org.cinnamon.settings-daemon.plugins.power time-critical 900
gsettings set org.cinnamon.settings-daemon.plugins.power percentage-critical 10

#### Google Chrome ####
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
apt-get -f install
cd $cwd

#### Text Editors ####
apt-get install -y vim
apt-get install -f
wget -c https://github.com/atom/atom/releases/download/v1.11.2/atom-amd64.deb
dpkg -i atom-amd64.deb
rm atom-amd64.deb
cd $cwd

#### Install Atom Packages ####
apm update
apm install linter
apm install linter-pylint
apm install vim-mode
apm install project-manager
apm install python-tools
apm install python-indent
apm install python-snippets
apm install autocomplete-python

#### GIT ####
apt-get install -y git
apt-get install -fy
git config --global user.name $git_name
git config --global user.email $git_email
git config --global push.default matching
git config --global core.editor "vim"

#### Install Gitter ####
wget -c https://update.gitter.im/linux64/gitter_3.1.0_amd64.deb
dpkg -i gitter_3.1.0_amd64.deb
rm gitter*.deb
cd $cwd

#### JavaScript ####
apt-get install -y npm
apt-get install -f
apt-get install -y nodejs
apt-get install -f
ln -s /usr/bin/nodejs /usr/bin/node
apt-get install -y gulp

#### NPM Modules ####
npm i -g yarn
npm i -g gulp
npm i -g eslint
npm i -g eslint-plugin-babel
npm i -g babel-eslint
npm i -g eslint-config-airbnb
npm i -g eslint-plugin-jsx-a11y
npm i -g eslint-plugin-react
npm i -g eslint-plugin-import
npm i -g create-react-app

#### Node School ####
./node_school.sh

#### Python Install ####
apt-get install -y python3-pip
apt-get install -f
apt-get install -y python3-venv
apt-get install -f

#### Graphics Tools ####
apt-get install -y inkscape
apt-get install -f
apt-get install -y gimp
apt-get install -f

#### Install Anki ####
wget -c https://apps.ankiweb.net/downloads/current/anki-2.0.39-amd64.tar.bz2
tar xjf anki-2.0.39-amd64.tar.bz2
cd anki-2.0.39
sudo make install
cd ..
rm -r ./anki*
cd $cwd
apt-get install -f

#### Install Slack ####
wget -c https://downloads.slack-edge.com/linux_releases/slack-desktop-2.4.2-amd64.deb
dpkg -i slack-desktop-2.4.2-amd64.deb
rm slack*.deb
cd $cwd

#### Easy Installs ####
apt-get install -y xclip
apt-get install -f
apt-get install -y trash-cli
apt-get install -f
apt-get install -y vlc-nox
apt-get install -f
apt-get install -y audacity
apt-get install -f
apt-get install -y gparted
apt-get install -f
apt-get install -y p7zip-full
apt-get install -f

#### Configure Backup ####
apt-get install -y rsync
apt-get install -f
echo "rsync -zrvh ~/../ /media/mackie/Home\ Backup" >> ~/.bashrc

#### Virtual Machine ####
apt-get install -y virtualbox
apt-get install -f
apt-get install -y virtualbox-qt
apt-get install -f

# Setup Aliases
cd $cwd
cp -v -f ./aliases.txt ~/
mv ~/aliases.txt ~/.aliases
echo "source ~/.aliases" >> ~/.bashrc
source ~/.bashrc
