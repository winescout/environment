set shell=/bin/zsh
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>
"nmap S :
"xnoremap <Leadcer>c <esc>:new | r ! ls<CR>

"map <C-[> :resize -1<CR>
"map <C-]> :resize +1<CR>
"map <C-p> :vertical resize -1<CR>
"map <C-\> :vertical resize +1<CR>
set shell=/bin/zsh
set backspace=indent,eol,start
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>
"nmap S :
noremap <Leader>r :NERDTreeToggle<CR>
noremap <Leader>f :CommandT<CR>
noremap <C-s> :w<CR>
noremap <Leader>q :q<cr>
noremap <Leader>d :r !date<CR>

"Run selected text through node, and paste output
command RunSelected :0read|'<,'>!node
xnoremap <Leader>ee :<C-U>RunSelected<CR>
command RunSelectedLine :read|.!node
noremap <Leader>el :RunSelectedLine<CR>

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

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

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
" run :PluginInstall after updating
Plugin 'gmarik/Vundle.vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tyru/open-browser.vim'
Plugin 'kannokanno/previm'
Plugin 'ervandew/supertab'
Plugin 'ternjs/tern_for_vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'burnettk/vim-angular'
Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
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

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
