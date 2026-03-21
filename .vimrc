" Be iMproved, required.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

"
" Settings
"
set noerrorbells                " No beeps.
set number                      " Show lines number.
set backspace=indent,eol,start  " Allow backspacing over everything in insert mode.
set ruler                       " Show the cursor position all the time.
set showcmd                     " Show (partial) command in status line.

set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=UTF-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before commands like :next and :make
set autoread                    " Automatically reread changed files.
set laststatus=2                " Always display the status line.


set incsearch                   " Incremental search.
set hlsearch                    " Highlight found searches.
set ignorecase                  " Do case insensitive matching.
set smartcase                   " Do smart case matching.
set ttyfast                     " Speed up scrolling in Vim.

" Formatting settings
set wrap
set textwidth=80
set formatoptions=tcqrn1
set autoindent
set smartindent
set showmatch
set smarttab

set tabstop=4
set shiftwidth=4

set shiftround

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=10
" By default timeoutlen is 1000 ms.
set timeoutlen=500
