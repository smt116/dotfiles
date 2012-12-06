set nocompatible
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
syntax on
set background=light 

set showcmd
set ruler
set ch=2

set nowrap
set linebreak  " Wrap at word

autocmd BufEnter * lcd %:p:h

filetype plugin indent on

au BufRead,BufNewFile,BufFilePost *.json,*.js set filetype=javascript
au BufRead,BufNewFile,BufFilePost *.coffee    set filetype=coffee
au BufRead,BufNewFile,BufFilePost *.less      set filetype=less

autocmd FileType html set filetype=xhtml
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete

map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>

set backspace=indent,eol,start
set number
set matchpairs+=<:>

highlight NonText guifg=#e5e5e5
highlight SpecialKey guifg=#e5e5e5

if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif
