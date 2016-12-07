set shell=/bin/zsh
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>
"nmap S :
map <Leader>r :NERDTreeToggle<CR>
map <Leader>f :CommandT<CR>
map <C-s> :w<CR>
map <Leader>q :q<cr>
map <Leader>d :r !date<CR>

"xnoremap <Leadcer>c <esc>:new | r ! ls<CR>

"map <C-[> :resize -1<CR>
"map <C-]> :resize +1<CR>
"map <C-p> :vertical resize -1<CR>
"map <C-\> :vertical resize +1<CR>
set shell=/bin/zsh
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>
"nmap S :
map <Leader>r :NERDTreeToggle<CR>
map <Leader>f :CommandT<CR>
map <C-s> :w<CR>
map <Leader>q :q<cr>
map <Leader>d :r !date<CR>
"map <C-[> :resize -1<CR>
"map <C-]> :resize +1<CR>
"map <C-p> :vertical resize -1<CR>
"map <C-\> :vertical resize +1<CR>

"map r <Left>
"map t k
"map h j
"nnoremap <silent> <C-l> <C-w>l
"nnoremap <silent> <C-r> <C-w>r

set expandtab
set shiftwidth=2
set softtabstop=2

" set relativenumber
set number
set nocompatible      " We're running Vim, not Vi!
set smartcase         " ignorecase unless search with a capital

let NERDTreeShowHidden=0
let g:jsx_ext_required = 0

syntax enable             " Enable syntax highlighting
filetype off           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd BufRead,BufNewFile *.jbuilder set filetype=Ruby
autocmd BufRead,BufNewFile *.jscad set filetype=javascript

" markdown-preview settings
" Turn spellcheck on for markdown files.
autocmd BufNewFile,BufRead *.md set spell

" Enable slim syntax highlight
"autocmd FileType slim setlocal foldmethod=indent
"autocmd BufNewFile,BufRead *.slim set filetype=slim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" walk through camel and snake case words with normal movement
call camelcasemotion#CreateMotionMappings('<leader>')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'kannokanno/previm'
Plugin 'burnettk/vim-angular'
Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'bkad/CamelCaseMotion'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END


"map r <Left>
"map t k
"map h j
"nnoremap <silent> <C-l> <C-w>l
"nnoremap <silent> <C-r> <C-w>r

set expandtab
set shiftwidth=2
set softtabstop=2

" set relativenumber
set number
set nocompatible      " We're running Vim, not Vi!
set smartcase         " ignorecase unless search with a capital

let NERDTreeShowHidden=0
let g:jsx_ext_required = 0

syntax enable             " Enable syntax highlighting
filetype off           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd BufRead,BufNewFile *.jbuilder set filetype=Ruby
autocmd BufRead,BufNewFile *.jscad set filetype=javascript

" markdown-preview settings
" Turn spellcheck on for markdown files.
autocmd BufNewFile,BufRead *.md set spell

" Enable slim syntax highlight
"autocmd FileType slim setlocal foldmethod=indent
"autocmd BufNewFile,BufRead *.slim set filetype=slim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" walk through camel and snake case words with normal movement
call camelcasemotion#CreateMotionMappings('<leader>')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tyru/open-browser.vim'
Plugin 'kannokanno/previm'
Plugin 'burnettk/vim-angular'
Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'bkad/CamelCaseMotion'
Plugin 'ternjs/tern_for_vim'
Plugin 'tpope/vim-markdown'

call vundle#end()            " required
filetype plugin indent on    " required

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

function! FormatJSON()
  :%!python -m json.tool
endfunction

" Powerline
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set encoding=utf-8
"set t_Co=256
"set fillchars+=stl:\ ,stlnc:\
"set term=xterm-256color
"set termencoding=utf-8

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

