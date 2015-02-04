# NullMode's Personal vim Settings

## About
This compilation was simply made so I can quickly git clone my personal
vim settings onto newly installed machines.

## Requirements
* git
* pip
* vim

## Installation Instructions
* Navigate to a suitable download folder and run
`git clone https://github.com/NullMode/vim.git`
* If you are not installing this on root you may need to install flake8
  manually
`pip install flake8`
* The install.sh file will sync the contents of the cloned project to the user's $HOME directory.
* General configuration is kept in the .vimrc file

## Updating plugins
In the .vim/ folder there is an update.sh file that will update the plugins and
color schemes in use (listed below)

## List of installed plugins and color schemes
* Pathogen - https://github.com/tpope/vim-pathogen
    + Configuration in .vimrc
* NERDTree - https://github.com/scrooloose/nerdtree
    + Configuration in .vimrc
* Molokai Color Scheme - https://github.com/tomasr/molokai
    + Configuration in .vimrc
* Vividchalk Color Scheme - https://github.com/tpope/vim-vividchalk
    + Configuration in .vimrc
* FlatColor Color Scheme - https://github.com/MaxSt/FlatColor
    + Configuration in .vimrc
+ Vim Flake8 - https://github.com/nvie/vim-flake8
    + Configuration in .vimrc
+ Vim Git - https://github.com/tpope/vim-git
+ Vim Fugitive - https://github.com/tpope/vim-fugitive
+ Vim Bufferline - https://github.com/bling/vim-bufferline
+ Vim Gitgutter - https://github.com/airblade/vim-gitgutter
+ Vim Airline - https://github.com/bling/vim-airline

## Thanks
* lnxg33k for some great tips and a lot of stolen content from his vimrc
file :P
* g0tmi1k for actually motivating me to make this, no automation this time :)
* TheColonial for showing me a color scheme that might make my eyes last longer
