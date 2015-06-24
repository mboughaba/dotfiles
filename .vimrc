"
"
"
" settings
"
"
"
set nocompatible
syntax enable
set t_Co=256
set spell
set number
set expandtab
set incsearch
set nocompatible
set laststatus=2
set encoding=utf-8
set shiftwidth=4
set noshowmode
set autochdir
set autoindent
set smarttab
set smartindent
set shm=at
set completeopt-=preview
set clipboard=unnamed
set mouse=a
set cursorline
set textwidth=79
set formatoptions=c,q,r,t
set colorcolumn=+1
set ruler
set showcmd
set wildmenu
set lazyredraw
set showmatch
set ignorecase
set smartcase
set magic
set hlsearch
set foldenable
set foldlevelstart=10
set foldmethod=indent
set wildignore=*.swp,*.bak,*pyc,*.class
set title
set visualbell
set noerrorbells
set list
set listchars=tab:\|\ ,extends:»,precedes:«,nbsp:×,trail:Ξ
set fileformats=unix
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*"
set undofile
set fileformat=unix
set history=1000
set undolevels=1000
set autoread
set nohidden
set pastetoggle=<F10>
set tabstop=4
set shiftwidth=4
set softtabstop=4
set nowritebackup
set nobackup
set noswapfile
set backspace=indent,eol,start
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set shortmess+=I
setlocal spell spelllang=en"
"
"
"
" style
"
"
"
set background=dark
if has('gui_running')
    set guifont=Meslo\ LG\ S\ for\ Powerline
    colorscheme solarized
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    set lines=999 columns=999
endif
"
"
"
" plugin settings
"
"
"
let g:indexed_search_shortmess=1
let g:session_directory = "~/.vim/session"
let g:session_autoload = "yes"
let g:session_autosave = "yes"
let g:session_verbose_messages = 0
let g:session_command_aliases = 1
let g:session_default_to_last = 1
let g:nerdtree_tabs_open_on_new_tab=0
let g:nerdtree_tabs_open_on_gui_startup=0
let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#close_symbol = '✘'
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:indentLine_char = '┆'
let b:delimitMate_jump_expansion = 1
let delimitMate_expand_cr = 1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers = ['jshint', 'jscs']
let g:syntastic_error_symbol = '✘'
let g:syntastic_style_error_symbol = '☠'
let g:syntastic_warning_symbol = '☢'
let g:syntastic_style_warning_symbol = '☹'
let g:syntastic_auto_jump = 0
let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
let g:netrw_keepdir = 1
let g:SuperTabDefaultCompletionType = "context"
let g:indentLine_noConcealCursor = ""
let g:indentLine_color_term = 8
let g:ConqueTerm_ReadUnfocused = 1
let g:ConqueTerm_StartMessages = 0
let g:airline_theme = 'badwolf'
let g:ctrlp_prompt_mappings = { 'AcceptSelection("e")': ['<c-t>'], 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'], }
let g:auto_save = 1
let g:auto_save_no_updatetime = 1
let g:auto_save_silent = 1
let g:auto_save_in_insert_mode = 0
"
"
"
" highlight
"
"
"
hi CursorLine gui=underline guibg=NONE
hi SignColumn guibg=NONE
"
"
"
" key bindings
"
"
"
map <C-n> :NERDTreeToggle<CR>
map <C-k> <esc>:TComment<CR>
vmap <C-S-k> :TCommentBlock<CR>
nnoremap <Esc><Esc> :nohl<CR>
nnoremap <c-Down> :m .+1<CR>==
nnoremap <c-Up> :m .-2<CR>==
inoremap <c-Down> <Esc>:m .+1<CR>==gi
inoremap <c-Up> <Esc>:m .-2<CR>==gi
vnoremap <c-Down> :m '>+1<CR>gv=gv
vnoremap <c-Up> :m '<-2<CR>gv=gv
imap <C-Space> <Plug>snipMateNextOrTrigger
smap <C-Space> <Plug>snipMateNextOrTrigger
"
"
"
" auto commands
"
"
"
autocmd FileType javascript noremap <buffer>  <C-l> :call JsBeautify()<cr>
autocmd FileType html noremap <buffer> <C-l> :call HtmlBeautify()<cr>
autocmd FileType css noremap <buffer> <C-l> :call CSSBeautify()<cr>
"
"
"
" plugins
"
"
"
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'moll/vim-node'
Plugin 'Raimondi/delimitMate'
Plugin 'Yggdroot/indentLine'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'walm/jshint.vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'einars/js-beautify'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'Valloric/YouCompleteMe'
" has a look at: https://github.com/sidorares/node-vim-debugger
" for debugging inside vim using node inspactor and :nbs command



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

