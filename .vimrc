set shell=/bin/zsh
" filetype func off
filetype off

if $TMUX == ''
  set clipboard=unnamed
endif
call pathogen#infect()
":colorscheme vividchalk
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
noremap <Leader>vr :vertical resize 
noremap <Leader>hr :resize 
noremap <leader>s :execute "noautocmd grep /\\<" . expand("<cword>") . "\\>/gj **/*.*" <Bar> cw<CR> 5

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
nnoremap ,webpack : -1read $HOME/.vim/templates/webpack.js<CR>

" SAMVERA CONF EXAMPLES
nnoremap ,searchcomp : -1read $HOME/.vim/templates/samvera-search-component.js<CR>
nnoremap ,livesearchcomp : -1read $HOME/.vim/templates/live_search_component.js<CR>

" FILE TYPES ------------------------------------------------------------
syntax enable         " Enable syntax highlighting
filetype off          " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" RUBY
autocmd BufRead,BufNewFile *.jbuilder set filetype=Ruby
autocmd BufRead,BufNewFile *.axlsx set filetype=Ruby

" JAVASCRIPT
autocmd BufRead,BufNewFile *.jscad set filetype=javascript


" BUILT IN CONFIGURATION ---------------------------------------------------
set expandtab
set shiftwidth=2
set softtabstop=2
"set relativenumber
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
"
" run :PluginInstall after updating
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" WILDIGNORE
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,node_modules,.git,ios,*.ttf,tmp

" VIM-JSX
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

"" GIST-VIM
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

" NERDTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
let NERDTreeShowHidden=1

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

" SYNTASTIC
" Plugin 'q0LoCo/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_enable_async = 0
" let g:syntastic_async_tmux_if_possible = 0
" "let g:syntastic_disabled_filetypes=['html']
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_loc_list_height = 5
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 1
" let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

" highlight link SyntasticErrorSign SignColumn
" "highlight link SyntasticWarningSign SignColumn
" highlight link SyntasticStyleErrorSign SignColumn
" highlight link SyntasticStyleWarningSign SignColumn

"nerdcommenter
Plugin 'scrooloose/nerdcommenter'
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1



" VIM-MARKDOWN
Plugin 'tpope/vim-markdown'

" VIM-MARKDOWN-PREVIEW
Plugin 'JamshedVesuna/vim-markdown-preview'
" Turn spellcheck on for markdown files.
autocmd BufNewFile,BufRead *.md set spell

" SPELLING --------------------------------------------------------------
 highlight clear SpellBad
 highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
 highlight clear SpellCap
 highlight SpellCap term=underline cterm=underline
 highlight clear SpellRare
 highlight SpellRare term=underline cterm=underline
 highlight clear SpellLocal
 highlight SpellLocal term=underline cterm=underline

" VIM-FLAVORED-MARKDOWN
" Use Github flavored markdown 
Plugin 'jtratner/vim-flavored-markdown'
let vim_markdown_preview_github=1

" VIM-POLYMER
Plugin 'myw/vim-polymer'


Plugin 'Townk/vim-autoclose'
Plugin 'alvan/vim-closetag'
Plugin 'bkad/CamelCaseMotion'
Plugin 'burnettk/vim-angular'
Plugin 'ervandew/supertab'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'statianzo/vim-jade'
Plugin 'qpkorr/vim-bufkill'
Plugin 'kannokanno/previm'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ternjs/tern_for_vim'
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
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
