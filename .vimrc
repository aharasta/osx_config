" Requires Vundle and ViM 7.3.598+
" install Vundle: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
" vi => :PluginInstall
" cli plugin install => vim +PluginInstall +qall
" install latest ViM (note, some unix distros will have vi load with ViM, but vim package still needs to be added):
" http://stackoverflow.com/questions/7211820/update-built-in-vim-on-mac-os-x

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'flazz/vim-colorschemes'

Plugin 'jelera/vim-javascript-syntax'

Plugin 'pangloss/vim-javascript'

Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'Raimondi/delimitMate'

Plugin 'Valloric/YouCompleteMe'
 
Plugin 'scrooloose/nerdtree'

Plugin 'tpope/vim-surround'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Line numbers
set nu

" Tab and Spacing Configuration (4 for python, 6 for javascript)
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu

" Color Configuration
set t_Co=256
syntax on
set background=dark
colorscheme brogrammer
" colorscheme distinguished

" Set filename to title for tabs/windows
let &titlestring = @%
set title

" delimitMate config (use ctrl + C for auto block completion)
imap <C-c> <CR><Esc>O

" YouCompleteMe config
let g:ycm_autoclose_preview_window_after_insertion=1

" NERDTree Configuration
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['node_modules', '.tern-project']
