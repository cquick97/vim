#!/bin/bash

# Get current directory if called from elsewhere
ORIGINAL_DIR=$(pwd)

# Get directory of script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Color variables
YS="\e[33m"
YE="\033[0m"

# Ding
DING="$YS""[*] ""$YE"

# Warning
echo -e "$DING"'WARNING - This script will update the installed plugins and color schemes.'
echo -e "$SING""Type 'y' to continue."
read IN

if [ ! "$IN" = "y"  ]; then
    exit 0
fi

# Change directory
cd $DIR

# Update Pathogen
echo -e "$DING"'Updating Pathogen ...'
rm autoload/pathogen.vim
curl -s -S -o autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd bundle

# Update airline
echo -e "$DING"'Updating airline ...'
rm -rf vim-airline/
git clone https://github.com/bling/vim-airline.git
rm -rf vim-airline/.git
rm -rf vim-airline/.gitignore

# Update indentline
echo -e "$DING"'Updating indentLine ...'
rm -rf indentLine/
git clone https://github.com/Yggdroot/indentLine.git
rm -rf indentLine/.git
rm indentLine/.gitignore

# Update NERDTree
echo -e "$DING"'Updating NERDTree  ...'
rm -rf nerdtree/
git clone https://github.com/scrooloose/nerdtree.git
rm -rf nerdtree/.git
rm nerdtree/.gitignore
rm nerdtree/README.markdown
rm -rf bundle/nerdtree/

# Update vim-flake8
echo -e "$DING"'Updating flake8 ...'
rm -rf vim-flake8/
git clone https://github.com/nvie/vim-flake8.git
rm -rf vim-flake8/.git
rm vim-flake8/README.mdown

# Update vim-git
echo -e "$DING"'Updating vim-git ...'
rm -rf vim-git
git clone https://github.com/tpope/vim-git

# Update fugitive
echo -e "$DING"'Updating fugitive ...'
rm -rf vim-fugitive
git clone https://github.com/tpope/vim-fugitive

# Update gitgutter
echo -e "$DING"'Updating gitgutter ...'
rm -rf vim-gitgutter
git clone https://github.com/airblade/vim-gitgutter

# Update bufferline
echo -e "$DING"'Updating bufferline ...'
rm -rf vim-bufferline
git clone https://github.com/bling/vim-bufferline

# Update airline
echo -e "$DING"'Updating airline ...'
rm -rf vim-airline
git clone https://github.com/bling/vim-airline

cd ..

# Update color schemes
echo -e "$DING"'Updating VividChalk & Moloka Color Schemes ...'
rm colors/vividchalk.vim
rm colors/molokai.vim
curl -s -S -o colors/vividchalk.vim https://raw.githubusercontent.com/tpope/vim-vividchalk/master/colors/vividchalk.vim
curl -s -S -o colors/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

# Return back
cd $ORIGINAL_DIR
