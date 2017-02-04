set shell=/bin/zsh
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>

" FIND
" set your path variable to current directory (from which you launched vim)
" and to all directories under current directory recursively.
" http://vim.wikia.com/wiki/Project_browsing_using_find
set path+=**

" TAB COMPLETION
" :help wildmenu
set wildmenu
set wildmode=longest:full,full

" TAGS
" C-n and C-p autocomplete,  reads included/required files
" TODO: bind this to file write :w to rebuild ctags - C-]
command! MakeTags !ctags -R .

" :edit netrw
let g:netrow_banner=0 "disable banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "opensplits to the right
let g:netrw_liststyle=3 "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

"read an empty HTML template and move to title
" -1 chanes line by 1
nnoremap ,html :-1read $HOME/.vim/templates/html.html<CR>3jwf>a

"HELP
" to find help in a mode i_ c_ v_
" :helpgrep
" :help


noremap <Leader>r :NERDTreeToggle<CR>
noremap <Leader>f :CommandT<CR>
noremap <C-s> :w<CR>
noremap <Leader>q :q<cr>
noremap <Leader>d :r !date<CR>

"Run selected text through node, and paste output
"command RunSelected :'<,'>:w !node
xnoremap <Leader>ee :<C-U>RunSelected<CR>
"command RunSelectedLine :read|.!node
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

let g:syntastic_disabled_filetypes=['html']
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
Plugin 'alvan/vim-closetag'
Plugin 'bkad/CamelCaseMotion'
Plugin 'burnettk/vim-angular'
Plugin 'ervandew/supertab'
Plugin 'gmarik/Vundle.vim'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kannokanno/previm'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'reedes/vim-pencil'
Plugin 'ternjs/tern_for_vim'
Plugin 'Townk/vim-autoclose'
Plugin 'plasticboy/vim-markdown'
Plugin 'tyru/open-browser.vim'

"TMUX plugin messes me up though  C-j specifically
"Plugin 'sjl/vitality.vim'


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

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

"Markdown Preview
let vim_markdown_preview_github=1

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
