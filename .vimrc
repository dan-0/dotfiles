" automatic reloading of .vimrc
autocmd! BufWritePost vimrc nested :source ~/.vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe' " Code completion
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'} " Status bar
Plugin 'scrooloose/nerdtree'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required


"============================================================================
" Visual Improvements
"============================================================================
" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
" Color scheme
syntax on
"colorscheme wombat256mod
colorscheme elflord
" Showing line numbers and length
set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

set colorcolumn=80
highlight ColorColumn ctermbg=233
" Show cursor line and column
set cursorline
set cursorcolumn


" Quick ESC
imap jj <Esc>


" better copy & paste
" when you want to paste large blocks of code into vim, press f2 before you
" paste. at the bottom you should see ``-- insert (paste) --``.
set pastetoggle=<f2>
set clipboard=unnamed
" mouse and backspace
set mouse=a " on OSX press ALT and click
set bs=2 " make backspace behave like normal again


set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Powerline
"set guifont=Source\ Code\ Pro\ for\ Powerline:h13
set guifont=Fira\ Mono\ for\ Powerline:h12
"let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8
set laststatus=2

map <C-n> :NERDTreeToggle<CR>

