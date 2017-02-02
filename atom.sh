#### Get Atom Itself ####
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