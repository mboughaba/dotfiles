set nocompatible                " Be iMproved, required
filetype off                    " Required


" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'


" Plugins
Plugin 'bling/vim-airline'
Plugin 'chiel92/vim-autoformat'
Plugin 'felikz/ctrlp-py-matcher'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'moll/vim-bbye'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'mboughaba/edifact.vim'
if $WORK_ENV
    Plugin 'file:///remote/users1/mboughaba/prj/tts.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/ttser'
endif
Plugin 'kshenoy/vim-signature'
Plugin 'djoshea/vim-autoread'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'altercation/vim-colors-solarized'
if has("unix")
    if has("python")
        Plugin 'valloric/youcompleteme'
    endif
endif


" Disabled plugins
"Plugin 'mattn/gist-vim'
"Plugin 'mattn/webapi-vim'
"Plugin 'justinmk/vim-sneak'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'vim-latex/vim-latex'
"Plugin 'tpope/vim-speeddating'
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-surround'
"Plugin 'fatih/vim-go'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'eagletmt/neco-ghc'
"Plugin 'lukerandall/haskellmode-vim'
"Plugin 'shougo/vimproc.vim'
"Plugin 'marijnh/tern_for_vim'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'Yggdroot/indentLine'


call vundle#end()               " Required
filetype plugin indent on       " Required

set hidden                      " Hide buffers
set showcmd                     " Show current command
set showmode                    " Show current mode
set encoding=utf-8              " UTF-8 encoding
set ff=unix                     " Use unix style line endings
set ruler                       " Show ruler
set autoread                    " Auto reload

set ttyfast                     " Fast terminal

" Load non default configuration
set exrc                        " Force vim to source vimrc if present in working directory.
set secure                      " Restrict write & shell commands when non-default vimrc.

" Temp Files
set nobackup                    " No backup file
set noswapfile                  " No swap file

" vim v7.3 specific options
if version >= 703
    " Undo
    set undofile                    " Persistent undo
    set undodir=~/.vim/undo         " Location to store undo history
    set undolevels=1000             " Maximum number of changes
    set undoreload=10000            " Maximum number of lines to save for undo on a buffer reload

    " Joining
    set formatoptions+=j            " Delete comment character when joining commented lines

    " Line Numbers
    "set rnu                        " Relative line numbers
endif

" Line Numbers
set nu                          " Show line numbers

" Scrolling
set scrolloff=5                 " Keep at least 5 lines above/below
set sidescrolloff=5             " Keep at least 5 columns left/right

" Searching
set incsearch                   " Incremental search
set hlsearch                    " Highlight matches
set ignorecase                  " Case-insensitive search
set smartcase                   " Unless search contains uppercase letter
set showmatch                   " Show matching bracket

" Indentation
set smarttab                    " Better tabs
set smartindent                 " Inserts new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=4                   " Columns a tab counts for
set softtabstop=4               " Columns a tab inserts in insert mode
set shiftwidth=4                " Columns inserted with the re-indent operations
set shiftround                  " Always indent by multiple of shift width
set expandtab                   " Always use spaces instead of tabs

" Joining
set nojoinspaces                " Only one space when joining lines

" Key sequence timeout
set ttimeout                    " Enable time out
set ttimeoutlen=100             " Set timeout time to 100 ms

" Backspace
set backspace=indent,eol,start  " Delete over line breaks

" Mouse
set mousehide                   " Hide mouse when typing
set mouse=nicr                  " No visual selection from using mouse

" Typos
cnoreabbrev W w
cnoreabbrev Q q

" Colors & Syntax
set t_Co=256                    " Force 256 colors
set term=xterm-256color
let g:solarized_termtrans=1     " Support transparent terminal emulators
syntax enable                   " Enable syntax highlighting
set background=dark             " Dark background color
colorscheme solarized           " Set color scheme
highlight clear LineNr          " Line number column same background as vim itself
highlight clear SignColumn      " Sign column same background as line numbers

" Wrapping
set nowrap                      " No wrapping
set linebreak                   " When wrapping, only at certain characters
set textwidth=0                 " Turn off physical line wrapping
set wrapmargin=0                " Turn off physical line wrapping

" Map leader key to space
let mapleader=" "

" Invisible Characters
nmap <leader>l :set list!<CR>   " Toggle hidden characters
set nolist                      " Hide by default
set listchars=tab:â–¸\ ,trail:-,extends:>,precedes:<,nbsp:âŽµ,eol:Â¬

" Completion Menu
set completeopt=longest,menuone " Inserts the longest common text and
                                " show menu even with only one item

" Paste Toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Spell Checking
set spelllang=en_us             " Default language
set complete+=kspell            " Word completion
nnoremap <silent> <F7> :set spell!<CR>
autocmd BufRead,BufNewFile *.md  setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd FileType gitcommit setlocal spell

" Disable Bells
set noeb vb t_vb=
autocmd GUIEnter * set vb t_vb=

" Wrapping Shortcuts
vmap Q gq
nmap Q gqap

" Buffers & Window Navigation
nnoremap <silent> <Tab> :bnext<CR>
nnoremap <silent> <S-Tab> :bprevious<CR>
nnoremap <silent> <F4>    :Bdelete<CR>
nnoremap <silent> <F3>  <C-w>q

" Enable Copy/Paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <ESC>:update<CR>

" Use CTRL-Q to save and quit
noremap <C-Q> :xa<CR>
vnoremap <C-Q> <ESC> :xa<CR>
inoremap <C-Q> <ESC> :xa<CR>

" Distraction free mode
nmap <silent> <Leader><space> :NERDTreeClose<CR> :TagbarClose<CR>

"enable scroll bind
nmap <silent> <Leader>scb :set scb!<CR>

" vimdiff
" next difference
execute "set <M-n>=\en"
nnoremap <M-n> ]c
" previous difference
execute "set <M-p>=\ep"
nnoremap <M-p> [c

" File utilities
nmap <silent> <leader>ef :!echo %<CR>               " Print file path
nmap <silent> <leader>cf :!cat %<CR>                " Echo file

" Remap number increment and decrement to avoid coflicts with gnu screen
execute "set <M-a>=\ea"
nnoremap <M-a> <C-A>
execute "set <M-x>=\ex"
nnoremap <M-x> <C-X>

" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Watch $MYVIMRC
augroup reload_myvimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END


" Ctags
set tags=.tags;                 " Find .tags recursively


" Undotree
nnoremap <F5> :UndotreeToggle<CR>


" Tagbar
nnoremap <F8> :TagbarToggle<CR>
let g:tagbar_right = 1
let g:tagbar_width = 35
if !&diff
    autocmd FileType * nested :call tagbar#autoopen(0)
endif


" FSwitch
execute "set <M-z>=\ez"
nnoremap <M-z> :FSHere<CR>
nmap <silent> <Leader>oL :FSSplitRight<cr>
nmap <silent> <Leader>oH :FSSplitLeft<cr>
nmap <silent> <Leader>oK :FSSplitAbove<cr>
nmap <silent> <Leader>oj :FSBelow<cr>

" Insert date
execute "set <M-d>=\ed"
nnoremap <M-d> "=strftime("%c")<CR>P
execute "set <M-d>=\ed"
inoremap <M-d> <C-R>=strftime("%c")<CR>

" keymap (habit breaking)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <Esc><Esc> :nohl<CR>

" NERDTree
let NERDTreeShowHidden=1                " show dotfiles and dotdirs
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 35
let NERDTreeIgnore = ['\.job$', '^CVS$', '\.orig', '\~$', '\.res$', '\.rex$', '\.log$', '\.playconf$']
let g:NERDTreeDirArrows = 0
let g:NERDTreeStatusline = "%f"
nnoremap <F9> :NERDTreeFind<CR>
nnoremap <F10> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
" Close vim if NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Open NERDTree when no file is selected
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_max_diagnostics_to_display = 1000
let g:ycm_min_num_of_chars_for_completion = 0
let g:ycm_min_num_identifier_candidate_chars = 0
let g:ycm_auto_trigger = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_filetype_blacklist = {
    \ 'vim' : 1,
    \ 'tagbar' : 1,
    \ 'qf' : 1,
    \ 'notes' : 1,
    \ 'markdown' : 1,
    \ 'md' : 1,
    \ 'unite' : 1,
    \ 'text' : 1,
    \ 'vimwiki' : 1,
    \ 'pandoc' : 1,
    \ 'infolog' : 1,
    \ 'tts' : 1,
    \ 'edi' : 1,
    \ 'mail' : 1
    \}
nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>
nnoremap <C-LeftMouse> :YcmCompleter GoTo<CR>
"let g:ycm_semantic_triggers = {'haskell' : ['.']}


" Auto Format
let g:formatdef_clangformat_objc = '"clang-format-3.6 -style=file"'


" Airline
set laststatus=2                " Always display status line
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme = 'base16'


" IndentLine
"let g:indentLine_char = 'â”†'                      " Change Indent Char
"let g:indentLine_color_term = 239


" CtrlP
let g:ctrlp_max_files = 0                        " Index all files
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching = 1                      " Enable CtrlP caching
let g:ctrlp_show_hidden = 1                      " Scan dotfiles and dotdirs
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX, Excluding version control directories
set wildignore+=*/.res,*/.rex,*/.log,*/.playconf,*/.gsvconf
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(res|rex|log|playconf|gsvconf)$'
    \ }
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'     " Set the directory to store the cache files
let g:ctrlp_clear_cache_on_exit = 0               " Enable cross-session caching by not deleting the cache files upon exiting


" CtrlP Funcky
let g:ctrlp_funky_matchtype = 'path'              " let CtrlP Funky do some nice highlighting
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_multi_buffers = 1
let g:ctrlp_funky_sort_by_mru = 1
let g:ctrlp_funky_use_cache = 1
let g:ctrlp_funky_nolim = 1
nnoremap <c-h> :CtrlPFunky<Cr>
nnoremap <s-h> :execute 'CtrlPFunky ' . expand('<cword>')<Cr>


" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_cpp_checkers = ['cppcheck']
"let g:syntastic_python_checkers = ['pylint']


" LaTeX
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_MultipleCompileFormats='pdf, aux'
"let g:Imap_FreezeImap=1         " Disable mappings
"let Tex_FoldedSections=''       " Disable folding sections
"let Tex_FoldedEnvironments=''   " Disable folding environments
"let Tex_FoldedMisc=''           " Disable folding miscellaneous
"if has("win32")
    "let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance'
"endif


" Markdown
"let g:vim_markdown_folding_disabled = 1

" Gist
"let g:gist_post_private = 1     " Private by default
"let g:gist_detect_filetype = 1  " Detect type from the file name
"let g:gist_update_on_write = 2  " Only :w! updates a gist


" Haskell
"let g:haddock_browser = 'chrome'
"let g:necoghc_enable_detailed_browse = 1
"let g:haskellmode_completion_ghc = 0
"autocmd Bufenter *.hs compiler ghc
"autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
