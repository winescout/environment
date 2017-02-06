set shell=/bin/zsh
call pathogen#infect()
:colorscheme vividchalk
:let mapleader = ","
:imap jj <Esc>

" NOTES --------------------------------------------------------------------
" HELP
" to find help in a mode i_ c_ v_
" :helpgrep
" :help
" :b <tab> switch buffer

" MAPPINGS -------------------------------------------------------------
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


" TEMPLATES -----------------------------------------------------------
" HTML file
nnoremap ,html :-1read $HOME/.vim/templates/html.html<CR>3jwf>a

" CSS
nnoremap ,cssmed :-1read $HOME/.vim/templates/cssmed.css<CR>27ji

" Markdown
nnoremap ,mdimg : -1read $HOME/.vim/templates/mdimg<CR>2li
nnoremap ,mdjs : -1read $HOME/.vim/templates/mdjs.md<CR>ji

" REACT
nnoremap ,comp : -1read $HOME/.vim/templates/comp.js<CR>

" FILE TYPES ------------------------------------------------------------
syntax enable         " Enable syntax highlighting
filetype off          " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" RUBY
autocmd BufRead,BufNewFile *.jbuilder set filetype=Ruby

" JAVASCRIPT
autocmd BufRead,BufNewFile *.jscad set filetype=javascript



" BUILT IN CONFIGURATION ---------------------------------------------------
set expandtab
set shiftwidth=2
set softtabstop=2
" set relativenumber
set number
set nocompatible      " We're running Vim, not Vi!
set smartcase         " ignorecase unless search with a capital

" FIND
" set path variable to current directory (from which vim launched)
" recursive
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

" NETRW
" :edit .
let g:netrow_banner=0 "disable banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "opensplits to the right
let g:netrw_liststyle=3 "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" walk through camel and snake case words with normal movement
call camelcasemotion#CreateMotionMappings('<leader>')


" PLUGINS ----------------------------------------------------------------
" run :PluginInstall after updating
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" VIM-JSX
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" NERDTREE
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

" PENCIL
Plugin 'reedes/vim-pencil'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" SYNTASTIC
Plugin 'vim-syntastic/syntastic'
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

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" VIM-MARKDOWN
Plugin 'plasticboy/vim-markdown'
augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" VIM-MARKDOWN-PREVIEW
Plugin 'JamshedVesuna/vim-markdown-preview'
" Turn spellcheck on for markdown files.
autocmd BufNewFile,BufRead *.md set spell

" VIM-FLAVORED-MARKDOWN
" Use Github flavored markdown 
Plugin 'jtratner/vim-flavored-markdown'
let vim_markdown_preview_github=1

" VITALITY
"TMUX plugin messes me up though  C-j specifically
"Plugin 'sjl/vitality.vim'

" let Vundle manage Vundle, required
" run :PluginInstall after updating
"

Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'bkad/CamelCaseMotion'
Plugin 'mattn/gist-vim'
Plugin 'burnettk/vim-angular'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'statianzo/vim-jade'
Plugin 'qpkorr/vim-bufkill'
Plugin 'kannokanno/previm'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ternjs/tern_for_vim'
Plugin 'mattn/webapi-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-vividchalk'
Plugin 'tyru/open-browser.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/command-t'
Plugin 'yegappan/grep'


call vundle#end()            " required
filetype plugin indent on    " required


" POWERLINE
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
