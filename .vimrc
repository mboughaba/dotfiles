set nocompatible                " Be iMproved, required
filetype off                    " Required

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage itself
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'felikz/ctrlp-py-matcher'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'mbbill/undotree'
Plugin 'moll/vim-bbye'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'marijnh/tern_for_vim'
" TODO: Reactivate signature, we need it, it is because of conflict with git gutter
"Plugin 'kshenoy/vim-signature'
Plugin 'airblade/vim-gitgutter'
Plugin 'djoshea/vim-autoread'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'will133/vim-dirdiff'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-gtest'
Plugin 'wimproved.vim'
Plugin 'johngrib/vim-game-code-break'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'shougo/vimproc.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'hushicai/tagbar-javascript.vim'
Plugin 'isRuslan/vim-es6'
Plugin 'elzr/vim-json'
Plugin 'quramy/tsuquyomi'
Plugin 'herringtondarkholme/yats.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'groenewege/vim-less'
Plugin 'ryanoasis/vim-devicons'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'taiansu/nerdtree-ag'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mattn/gist-vim'
Plugin 'vim-latex/vim-latex'
Plugin 'tpope/vim-dispatch'
Plugin 'bronson/vim-visual-star-search'
if has("gui_running")
    Plugin 'derekmcloughlin/gvimfullscreen_win32'
endif
if has("unix")
    if has("python")
        Plugin 'valloric/youcompleteme'
    else
        Plugin 'vim-scripts/OmniCppComplete'
        Plugin 'ervandew/supertab'
    endif
else
    Plugin 'vim-scripts/OmniCppComplete'
    Plugin 'ervandew/supertab'
endif
if $WORK_ENV
    Plugin 'mboughaba/edifact.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/tts.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/ttser'
endif

call vundle#end()               " Required
filetype plugin indent on       " Required

" Configuration
set hidden                      " Hide buffers
set showcmd                     " Show current command
set showmode                    " Show current mode
set encoding=utf-8              " UTF-8 encoding
if has("gui_running")
    set rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
endif
if &modifiable
    set ff=unix                     " Use unix style line endings
endif
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
    "set rnu                        " Relative line numbers, no thanks :)
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
if has("gui_running")
    set guioptions-=T
    set guioptions-=m
    set guioptions-=r
    set guioptions-=m  "remove menu bar
    set guioptions-=L  "remove left-hand scroll bar
    set guifont=InconsolataGo\ NF:h12
    au GUIEnter * simalt ~x
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
else
    set t_Co=256                    " Force 256 colors
    set term=xterm-256color
endif

" Colorscheme
syntax enable                   " Enable syntax highlighting
set background=dark             " Dark background color
if has("gui_running")
    """ Molokai
    let g:molokai_original = 1
    let g:rehash256 = 1
    colorscheme molokai           " Set color scheme
else
    """ Solarized
    let g:solarized_termtrans=1     " Support transparent terminal emulators
    colorscheme solarized           " Set color scheme
endif
" GitGutter & Signature
"let g:SignatureMarkTextHLDynamic = 1
let g:gitgutter_override_sign_column_highlight = 0
set signcolumn=yes
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
highlight clear LineNr          " Line number column same background as vim itself
highlight clear SignColumn      " Sign column same background as line numbers
highlight LineNr ctermfg=219 guifg=#d78787
highlight Cursor ctermbg=198 guibg=#D13A82
highlight iCursor ctermbg=201 guibg=#D13A82
highlight NonText ctermfg=234 guifg=bg
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

" C++ Syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Wrapping
set nowrap                      " No wrapping
set linebreak                   " When wrapping, only at certain characters
set textwidth=0                 " Turn off physical line wrapping
set wrapmargin=0                " Turn off physical line wrapping

" Map leader key to space
let mapleader=" "

" Invisible Characters
" TODO: listchars are not displayed because of `highlight NonText guifg=bg`
nmap <leader>l :set list!<CR> :highlight NonText guifg=fg<CR>   " Toggle hidden characters
set nolist                      " Hide by default
set listchars=tab:▸\ ,trail:-,extends:>,precedes:<,nbsp:⎵,eol:¬

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

" Enable Copy/Paste, no thanks :)
"vmap <C-c> "+yi
"vmap <C-x> "+c
"vmap <C-v> c<ESC>"+p
"imap <C-v> <ESC>"+pa

" Use CTRL-S for saving, also in Insert mode, no thanks :)
"noremap <C-S> :update<CR>
"vnoremap <C-S> <C-C>:update<CR>
"inoremap <C-S> <ESC>:update<CR>

" Use CTRL-Q to save and quit, no thanks :)
"noremap <C-Q> :xa<CR>
"vnoremap <C-Q> <ESC> :xa<CR>
"inoremap <C-Q> <ESC> :xa<CR>

"enable scroll bind
nmap <silent> <Leader>scb :set scb!<CR>

" vimdiff
let g:DirDiffDynamicDiffText = 1
" next difference
execute "set <M-n>=\en"
nnoremap <M-n> ]c
" previous difference
execute "set <M-p>=\ep"
nnoremap <M-p> [c
" de-hexify
execute "set <M-h>=\eh"
nnoremap <M-h> :%s/\\x1D/+/ge <CR> :%s/\\x1F/:/ge <CR> :%s/\\x1C/'/ge <CR> :%s/\\x19/*/ge <CR> :diffupdate<CR>

" File utilities
nmap <silent> <leader>ef :!echo %<CR>               " Print file path
nmap <silent> <leader>cf :!cat %<CR>                " Echo file

" Remap number increment and decrement to avoid coflicts with gnu screen
execute "set <M-a>=\ea"
nnoremap <M-a> <C-A>
execute "set <M-x>=\ex"
nnoremap <M-x> <C-X>

" Remove Trailing Whitespace
autocmd BufWritePre * :%s/\s\+$//e | retab

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

" codingame cpp merge
if $CODING_GAME
    "autocmd BufWritePost * ! codingame-merge
    au BufWritePost * silent! execute "! codingame-merge >/dev/null 2>&1" | redraw!
endif


" Insert date
"execute "set <M-d>=\ed"
"nnoremap <M-d> "=strftime("%c")<CR>P
"execute "set <M-d>=\ed"
"inoremap <M-d> <C-R>=strftime("%c")<CR>

" keymap (habit breaking)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap <Esc><Esc> :nohl<CR>

" NERDTree
" Distraction free mode
nmap <silent> <Leader><space> :NERDTreeClose<CR> :TagbarClose<CR>

"let NERDTreeShowHidden=1                " show dotfiles and dotdirs
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
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
" NERDTress File highlighting
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error"
let g:NERDTreePatternMatchHighlightColor['src\/'] = s:blue
let g:NERDTreePatternMatchHighlightColor['include\/'] = s:green
let g:NERDTreePatternMatchHighlightColor['test\/'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['demo\/'] = s:beige
let g:NERDTreePatternMatchHighlightColor['obj\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['lib\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['bin\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['links\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['logs\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['etc\/'] = s:green
let g:NERDTreePatternMatchHighlightColor['data\/'] = s:green
let g:NERDTreePatternMatchHighlightColor['bower_components\/'] = s:lightPurple
let g:NERDTreePatternMatchHighlightColor['node_components\/'] = s:lightPurple


" YouCompleteMe
if has("unix")
    if has("python")
        let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
        let g:ycm_max_diagnostics_to_display = 1000
        let g:ycm_min_num_of_chars_for_completion = 0
        let g:ycm_min_num_identifier_candidate_chars = 0
        let g:ycm_auto_trigger = 1
        let g:ycm_register_as_syntastic_checker = 0
        let g:ycm_use_ultisnips_completer = 0
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
            \ 'valgrind' : 1,
            \ 'mail' : 1
            \}
        nnoremap <F12> :YcmForceCompileAndDiagnostics<CR>
        nnoremap <C-LeftMouse> :YcmCompleter GoTo<CR>
    else
        " omnicppcomplete
        let OmniCpp_GlobalScopeSearch = 1
        let OmniCpp_NamespaceSearch = 1
    endif
else
    " omnicppcomplete
    let OmniCpp_GlobalScopeSearch = 1
    let OmniCpp_NamespaceSearch = 1
endif


" Airline
set laststatus=2                " Always display status line
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
if has("gui_running")
    let g:airline_theme = 'molokai'
else
    let g:airline_theme = 'solarized'
endif
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" Devicons
let g:webdevicons_enable_denite = 0


" IndentLine
let g:indentLine_char = '¦'                      " Change Indent Char
"let g:indentLine_setColors = 0


" CtrlP
let g:ctrlp_max_files = 0                        " Index all files
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching = 1                      " Enable CtrlP caching
let g:ctrlp_show_hidden = 1                      " Scan dotfiles and dotdirs
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_dont_split = 'NERD_tree_2'
function! CtrlPCommand()
    let c = 0
    let wincount = winnr('$')
    " Don't open it here if current buffer is not writable (e.g. NERDTree)
    while !empty(getbufvar(+expand("<abuf>"), "&buftype")) && c < wincount
        exec 'wincmd w'
        let c = c + 1
    endwhile
    exec 'CtrlP'
endfunction
let g:ctrlp_cmd = 'call CtrlPCommand()'
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

" UltiSnips
if has("unix")
    let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
else
    " TODO: I can't get custom snippets to work on windows
    let g:UltiSnipsSnippetDirectories = ['~\.vim\UltiSnips\', 'UltiSnips']
endif
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"

" Open Grok
"let g:ogs_app_url = 'http://grok.nce.amadeus.net/Platinum/'
"let g:ogs_app_url = '/mid'

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_python_checkers = ['pylint']

" LaTeX
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
let g:Imap_FreezeImap=1         " Disable mappings
let Tex_FoldedSections=''       " Disable folding sections
let Tex_FoldedEnvironments=''   " Disable folding environments
let Tex_FoldedMisc=''           " Disable folding miscellaneous
if has("win32")
    let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance'
endif

" Markdown
let g:vim_markdown_folding_disabled = 1
"autocmd BufNewFile,BufReadPost *.md set filetype=markdown
"let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"let g:markdown_minlines = 100

" Gist
let g:gist_post_private = 1     " Private by default
let g:gist_detect_filetype = 1  " Detect type from the file name
let g:gist_update_on_write = 2  " Only :w! updates a gist

" Pretty print xml
autocmd BufNewFile,BufRead *.xml nmap <silent> <leader>ff :%!XMLLINT_INDENT='    ' xmllint --format %<cr>

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
