set nocompatible

silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()
call pathogen#infect()

syntax enable
filetype plugin indent on

"let g:solarized_termcolors=256
"let g:solarized_termtrans=1
"set background=dark
"colorscheme codeschool
"colorscheme grb256

set backupdir=~/tmp

set encoding=utf-8
set fileencodings=utf-8,latin2
set autowrite

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set sta " a <Tab> in an indent inserts 'shiftwidth' spaces

set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent  (local to buffer)

set hlsearch    " highlight search
set incsearch   " incremental search, search as you type
set ignorecase  " Ignore case when searching 
set smartcase   " Ignore case when searching lowercase

set t_Co=256

set showcmd
set ch=2

set nowrap
set linebreak  " Wrap at word

autocmd BufEnter * lcd %:p:h

au BufRead,BufNewFile,BufFilePost *.json,*.js set filetype=javascript
au BufRead,BufNewFile,BufFilePost *.coffee    set filetype=coffee
au BufRead,BufNewFile,BufFilePost *.less      set filetype=less

autocmd FileType html set filetype=xhtml
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

set backspace=indent,eol,start
set number
set ruler
set matchpairs+=<:>

set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set list


if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

highlight clear SignColumn
