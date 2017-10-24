 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "           888     888 8888888 888b     d888 8888888b.   .d8888b.             "
 "           888     888   888   8888b   d8888 888   Y88b d88P  Y88b            "
 "           888     888   888   88888b.d88888 888    888 888    888            "
 "           Y88b   d88P   888   888Y88888P888 888   d88P 888                   "
 "            Y88b d88P    888   888 Y888P 888 8888888P ' 888                   "
 "             Y88o88P     888   888  Y8P  888 888 T88b   888    888            "
 "              Y888P      888   888   '   888 888  T88b  Y88b  d88P            "
 "               Y8P     8888888 888       888 888   T88b  'Y8888P'             "
 "                                                                  by          "
" ███╗   ███╗██████╗  ██████╗ ██╗   ██╗ ██████╗ ██╗  ██╗ █████╗ ██████╗  █████╗  "
" ████╗ ████║██╔══██╗██╔═══██╗██║   ██║██╔════╝ ██║  ██║██╔══██╗██╔══██╗██╔══██╗ "
" ██╔████╔██║██████╔╝██║   ██║██║   ██║██║  ███╗███████║███████║██████╔╝███████║ "
" ██║╚██╔╝██║██╔══██╗██║   ██║██║   ██║██║   ██║██╔══██║██╔══██║██╔══██╗██╔══██║ "
" ██║ ╚═╝ ██║██████╔╝╚██████╔╝╚██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝██║  ██║ "
" ╚═╝     ╚═╝╚═════╝  ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝ "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Mohamed Boughaba
" Repository: https://github.com/mboughaba/dotfiles
" Description: My own taste of dotfiles
"
"
"
"
"
"
" ╔╗ ┌─┐  ┬╔╦╗┌─┐┬─┐┌─┐┬  ┬┌─┐┌┬┐
" ╠╩╗├┤   │║║║├─┘├┬┘│ │└┐┌┘├┤  ││
" ╚═╝└─┘  ┴╩ ╩┴  ┴└─└─┘ └┘ └─┘─┴┘
"
" ViMproved {{{
se nocompatible
filet off
" }}}
" Map Leader {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╔╦╗┌─┐┌─┐╦  ┌─┐┌─┐┌┬┐┌─┐┬─┐
" ║║║├─┤├─┘║  ├┤ ├─┤ ││├┤ ├┬┘
" ╩ ╩┴ ┴┴  ╩═╝└─┘┴ ┴─┴┘└─┘┴└─
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map leader key to space
let mapleader=" "
let g:mapleader=" "
" }}}
" Vundle {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╦  ╦┬ ┬┌┐┌┌┬┐┬  ┌─┐┌─┐
" ╚╗╔╝│ ││││ │││  ├┤ └─┐
"  ╚╝ └─┘┘└┘─┴┘┴─┘└─┘└─┘
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
se rtp+=~/.vim/bundle/Vundle.vim
cal vundle#begin()
"
" Let Vundle manage itself
"
Plugin 'gmarik/Vundle.vim'
"
" Custom Plugins
"
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
Plugin 'marijnh/tern_for_vim'
" TODO: Reactivate signature, currently crashes with gitgutter
"Plugin 'kshenoy/vim-signature'
Plugin 'airblade/vim-gitgutter'
Plugin 'djoshea/vim-autoread'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'octol/vim-cpp-enhanced-highlight'
if has("gui_running")
    Plugin 'tomasr/molokai'
el
    Plugin 'altercation/vim-colors-solarized'
en
Plugin 'will133/vim-dirdiff'
Plugin 'tpope/vim-repeat'
Plugin 'jiangmiao/auto-pairs'
Plugin 'alepez/vim-gtest'
if has("gui_running")
    Plugin 'kkoenig/wimproved.vim'
en
Plugin 'johngrib/vim-game-code-break'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'shougo/vimproc.vim'
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
Plugin 'mboughaba/vim-lessmess'
Plugin 'airblade/vim-rooter'
Plugin 'jeetsukumaran/vim-buffergator'
if has("gui_running")
    Plugin 'derekmcloughlin/gvimfullscreen_win32'
en
if has("unix")
    if has("python")
        Plugin 'valloric/youcompleteme'
    el
        Plugin 'vim-scripts/OmniCppComplete'
        Plugin 'ervandew/supertab'
    en
el
    Plugin 'vim-scripts/OmniCppComplete'
    Plugin 'ervandew/supertab'
en
if has("gui_running")
    Plugin 'Yggdroot/indentLine'
en
if $WORK_ENV
    Plugin 'mboughaba/edifact.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/tts.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/ttser'
en
"
" Let there be dragons
"
cal vundle#end()
filet plugin indent on
" }}}
" Eye Candy {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╔═╗┬ ┬┌─┐  ┌─┐┌─┐┌┐┌┌┬┐┬ ┬
" ║╣ └┬┘├┤   │  ├─┤│││ ││└┬┘
" ╚═╝ ┴ └─┘  └─┘┴ ┴┘└┘─┴┘ ┴
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Color
"
if has("gui_running")
    se guioptions-=T
    se guioptions-=m
    se guioptions-=r
    "remove menu bar
    se guioptions-=m
    "remove left-hand scroll bar
    se guioptions-=L
    se guifont=InconsolataGo\ NF:h12
    au GUIEnter * simalt ~x
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
el
    " Force 256 colors
    se t_Co=256
    se term=xterm-256color
en
"
" Colorscheme
"
syn enable                   " Enable syntax highlighting
se background=dark             " Dark background color
" Set color scheme
if has("gui_running")
    colo molokai
el
    colo solarized
en
"
" Cursor, Line & Sign
"
" Line number column same background as vim itself
hi clear LineNr
" Sign column same background as line numbers
hi clear SignColumn
hi LineNr ctermfg=219 guifg=#d78787
hi Cursor ctermbg=198 guibg=#D13A82
hi iCursor ctermbg=201 guibg=#D13A82
"hi NonText ctermfg=234 guifg=#404235
hi NonText ctermfg=234 guifg=bg
se guicursor=n-v-c:block-Cursor
se guicursor+=i:ver100-iCursor
se guicursor+=n-v-c:blinkon0
se guicursor+=i:blinkwait10
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" Vim Settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╦  ╦╦╔╦╗  ╔═╗┌─┐┌┬┐┌┬┐┬┌┐┌┌─┐┌─┐
" ╚╗╔╝║║║║  ╚═╗├┤  │  │ │││││ ┬└─┐
"  ╚╝ ╩╩ ╩  ╚═╝└─┘ ┴  ┴ ┴┘└┘└─┘└─┘
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Hide buffers
"
se hidden
" Show current command
se showcmd
" Show current mode
se showmode
" UTF-8 encoding
se encoding=utf-8
if has("gui_running")
    se rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
en
if &modifiable
    " Use unix style line endings
    se ff=unix
en
"
" Show ruler
"
se ruler
"
" Auto reload
"
se autoread
"
" Fast terminal
"
se ttyfast
" Load non default configuration
" Force vim to source vimrc if present in working directory.
se exrc
" Restrict write & shell commands when non-default vimrc.
se secure
"
" Temp Files
"
" No backup file
se nobackup
" No swap file
se noswapfile
"
" vim v7.3+ specific options
"
if version >= 703
    " Undo
    " Persistent undo
    se undofile
    " Location to store undo history
    se undodir=~/.vim/undo
    " Maximum number of changes
    se undolevels=1000
    " Maximum number of lines to save for undo on a buffer reload
    se undoreload=10000
    " Joining
    " Delete comment character when joining commented lines
    se formatoptions+=j
    " Line Numbers
    " Relative line numbers, no thanks :)
    "se rnu
en
"
" Line Numbers
"
" Show line numbers
se nu
"
" Scrolling
"
" Keep at least 5 lines above/below
se scrolloff=5
" Keep at least 5 columns left/right
se sidescrolloff=5
"
" Searching
"
" Incremental search
se incsearch
" Highlight matches
se hlsearch
" Case-insensitive search
se ignorecase
" Unless search contains uppercase letter
se smartcase
" Show matching bracket
se showmatch
"
" Indentation
"
" Better tabs
se smarttab
" Inserts new level of indentation
se smartindent
" Copy indentation from previous line
se autoindent
" Columns a tab counts for
se tabstop=4
" Columns a tab inserts in insert mode
se softtabstop=4
" Columns inserted with the re-indent operations
se shiftwidth=4
" Always indent by multiple of shift width
se shiftround
" Always use spaces instead of tabs
se expandtab
"
" Joining
"
" Only one space when joining lines
se nojoinspaces
" Key sequence timeout
" Enable time out
se ttimeout
" Set timeout time to 100 ms
se ttimeoutlen=100
" Backspace Delete over line breaks
se backspace=indent,eol,start
" String at start of lines that have been wrapped.
set showbreak="↪ "
"
" Mouse
"
" Hide mouse when typing
se mousehide
" No visual selection from using mouse
se mouse=nicr
" Always display sign column
se signcolumn=yes
"
" Wrapping
"
" No wrapping
se nowrap
" When wrapping, only at certain characters
se linebreak
" Turn off physical line wrapping
se textwidth=0
" Turn off physical line wrapping
se wrapmargin=0
"
" Completion Menu
"
" Inserts the longest common text and show menu even with only one item
se completeopt=longest,menuone
"
" Paste
"
se pastetoggle=<F2>
"
" Spell
"
" Default language
se spelllang=en_us
" Word completion
se complete+=kspell
"
" Disable Bells
"
se noeb vb t_vb=
"
" Ctags Find .tags recursively
"
se tags=.tags;
"
" Statusline
"
" Always display status line
se laststatus=2
" Linux/MacOSX, Excluding version control directories
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*
se wildignore+=*/.res,*/.rex,*/.log,*/.playconf,*/.gsvconf
"
" Configure statusline for laster Syntastic use
"
se statusline+=%#warningmsg#
if exists(":SyntasticStatuslineFlag") | se statusline+=%{SyntasticStatuslineFlag()} | en
se statusline+=%*
"
" Typos
"
cnorea W w
cnorea Q q
"
" Grep vs Ag
"
if executable('ag')
  " Use ag over grep
  se grepprg=ag\ --nogroup\ --nocolor
en
" }}}
" Plugin Settings {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╔═╗┬  ┬ ┬┌─┐┬┌┐┌  ╔═╗┌─┐┌┬┐┌┬┐┬┌┐┌┌─┐┌─┐
" ╠═╝│  │ ││ ┬││││  ╚═╗├┤  │  │ │││││ ┬└─┐
" ╩  ┴─┘└─┘└─┘┴┘└┘  ╚═╝└─┘ ┴  ┴ ┴┘└┘└─┘└─┘
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" GitGutter & Signature
"
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
let g:gitgutter_max_signs = 500
"
" Molokai
"
let g:molokai_original = 1
let g:rehash256 = 1
"
" Solarized
"
let g:solarized_termtrans=1     " Support transparent terminal emulators
"let g:solarized_termcolors=256
"
" C++ Syntax highlighting
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
"
" Lessmess
"
let g:enable_lessmess_onsave = 1
let g:enable_lessmess_highlighting = 1
let g:lessmess_highlighting_map = '<leader>l'
"
" vimdiff
"
let g:DirDiffDynamicDiffText = 1
"
" Tagbar
"
let g:tagbar_right = 1
let g:tagbar_width = 35
"
" NERDTree
"
" show dotfiles and dotdirs
"let NERDTreeShowHidden=1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 35
let NERDTreeIgnore = ['\.job$', '^CVS$', '\.orig', '\~$', '\.res$', '\.rex$', '\.log$', '\.playconf$']
let g:NERDTreeDirArrows = 0
let g:NERDTreeStatusline = "%f"
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
"
" NERDTree File highlighting
"
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
"
" YouCompleteMe
"
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
        nn <F12> :YcmForceCompileAndDiagnostics<CR>
        nn <C-LeftMouse> :YcmCompleter GoTo<CR>
    el
        " omnicppcomplete
        let OmniCpp_GlobalScopeSearch = 1
        let OmniCpp_NamespaceSearch = 1
    en
el
    "
    " omnicppcomplete
    "
    let OmniCpp_GlobalScopeSearch = 1
    let OmniCpp_NamespaceSearch = 1
en
"
" Airline
"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
if has("gui_running")
    let g:airline_theme = 'molokai'
el
    let g:airline_theme = 'solarized'
en
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
"
" Devicons
"
let g:webdevicons_enable_denite = 0
"
" IndentLine
"
if has("gui_running")
    " Change Indent Char
    let g:indentLine_char = '┆'
en
"
" CtrlP
"
" Index all files
let g:ctrlp_max_files = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" Enable CtrlP caching
let g:ctrlp_use_caching = 1
" Scan dotfiles and dotdirs
let g:ctrlp_show_hidden = 1
if executable('ag')
    " Make CtrlP even faster using the silver search
    "let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
en
" Make CtrlP open files in new buffer
let g:ctrlp_switch_buffer = 0
" Make CtrlP follow CWD
let g:ctrlp_working_path_mode = 0
" Lagacy hack to avoid opening files in NERDTree split
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_dont_split = 'NERD_tree_2'
fun! CtrlPCommand()
    let c = 0
    let wincount = winnr('$')
    " Don't open it here if current buffer is not writable (e.g. NERDTree)
    wh !empty(getbufvar(+expand("<abuf>"), "&buftype")) && c < wincount
        exe 'wincmd w'
        let c = c + 1
    endw
    exe 'CtrlP'
endf
let g:ctrlp_cmd = 'cal CtrlPCommand()'
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(res|rex|log|playconf|gsvconf)$'
    \ }
" Set the directory to store the cache files
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" Enable cross-session caching by not deleting the cache files upon exiting
let g:ctrlp_clear_cache_on_exit = 0
"
" CtrlP Funcky
"
" let CtrlP Funky do some nice highlighting
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_funky_syntax_highlight = 1
let g:ctrlp_funky_multi_buffers = 1
let g:ctrlp_funky_sort_by_mru = 1
let g:ctrlp_funky_use_cache = 1
let g:ctrlp_funky_nolim = 1
"
" UltiSnips
"
if has("unix")
    let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
el
    " TODO: I can't get custom snippets to work on windows
    let g:UltiSnipsSnippetDirectories = ['~\.vim\UltiSnips\', 'UltiSnips']
en
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
"
" Syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_python_checkers = ['pylint']
"
" LaTeX
"
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'
" Disable mappings
let g:Imap_FreezeImap=1
" Disable folding sections
let Tex_FoldedSections=''
" Disable folding environments
let Tex_FoldedEnvironments=''
" Disable folding miscellaneous
let Tex_FoldedMisc=''
if has("win32")
    let g:Tex_ViewRule_pdf = 'SumatraPDF -reuse-instance'
en
"
" Gist
"
" Private by default
let g:gist_post_private = 1
" Detect type from the file name
let g:gist_detect_filetype = 1
" Only :w! updates a gist
let g:gist_update_on_write = 2
"
" Javascript
"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" source: https://github.com/pangloss/vim-javascript/issues/101#issuecomment-45543789
set cole=0
" Enable javascript concealing
"let g:javascript_conceal = 1
"let g:javascript_conceal_function   = 'ƒ'
"let g:javascript_conceal_null       = 'ø'
"let g:javascript_conceal_this       = '@'
"let g:javascript_conceal_return     = '⇚'
"let g:javascript_conceal_undefined  = '¿'
"let g:javascript_conceal_NaN        = 'ℕ'
"let g:javascript_conceal_prototype  = '¶'
" }}}
" Keymap {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╦╔═┌─┐┬ ┬┌┬┐┌─┐┌─┐
" ╠╩╗├┤ └┬┘│││├─┤├─┘
" ╩ ╩└─┘ ┴ ┴ ┴┴ ┴┴
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Paste Toggle
"
nn <F2> :se invpaste paste?<CR>
"
" CtrlP Funky
"
nn <c-h> :CtrlPFunky<Cr>
nn <s-h> :exe 'CtrlPFunky ' . expand('<cword>')<Cr>
"
" Spell Checking
"
nn <silent> <F7> :se spell!<CR>
"
" Wrapping Shortcuts
"
vm Q gq
nm Q gqap
"
" Buffers & Window Navigation
"
nn <silent> <Tab> :bnext<CR>
nn <silent> <S-Tab> :bprevious<CR>
nn <silent> <F4>    :Bdelete<CR>
nn <silent> <F3>  <C-w>q
"
" Enable scroll bind
"
nm <silent> <Leader>scb :se scb!<CR>
"
" Vimdiff
"
" next difference
exe "se <M-n>=\en"
nn <M-n> ]c
" previous difference
exe "se <M-p>=\ep"
nn <M-p> [c
" de-hexify
if $WORK_ENV
    exe "se <M-h>=\eh"
    nn <M-h> :%s/\\x1D/+/ge <CR> :%s/\\x1F/:/ge <CR> :%s/\\x1C/'/ge <CR> :%s/\\x19/*/ge <CR> :diffupdate<CR>
en
"
" File utilities
"
nm <silent> <leader>ef :!echo %<CR>               " Print file path
nm <silent> <leader>cf :!cat %<CR>                " Echo file
"
" Remap number increment and decrement to avoid coflicts with gnu screen
"
exe "se <M-a>=\ea"
nn <M-a> <C-A>
exe "se <M-x>=\ex"
nn <M-x> <C-X>
"
" Undotree
"
nn <F5> :UndotreeToggle<CR>
"
" Tagbar
"
nn <F8> :TagbarToggle<CR>
if !&diff
    au FileType * nested :cal tagbar#autoopen(0)
en
"
" FSwitch
"
exe "se <M-z>=\ez"
nn <M-z> :FSHere<CR>
nm <silent> <Leader>oL :FSSplitRight<cr>
nm <silent> <Leader>oH :FSSplitLeft<cr>
nm <silent> <Leader>oK :FSSplitAbove<cr>
nm <silent> <Leader>oj :FSBelow<cr>
"
" keymap (habit breaking)
"
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>
"
" Clean the mess after highlight search
"
nn <Esc><Esc> :nohl<CR>
"
" Distraction free mode
"
nm <silent> <Leader><space> :NERDTreeClose<CR> :TagbarClose<CR>
"
" NERDTree
"
nn <F9> :NERDTreeFind<CR>
nn <F10> :NERDTreeToggle<CR>
"
" Enable Copy/Paste, no thanks :)
"
"vm <C-c> "+yi
"vm <C-x> "+c
"vm <C-v> c<ESC>"+p
"im <C-v> <ESC>"+pa
" }}}
" Autocommand {{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ╔═╗┬ ┬┌┬┐┌─┐┌─┐┌─┐┌┬┐┌┬┐┌─┐┌┐┌┌┬┐
" ╠═╣│ │ │ │ ││  │ │││││││├─┤│││ ││
" ╩ ╩└─┘ ┴ └─┘└─┘└─┘┴ ┴┴ ┴┴ ┴┘└┘─┴┘
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Spell
"
au BufRead,BufNewFile *.md  setlocal spell
au BufRead,BufNewFile *.tex setlocal spell
au FileType gitcommit setlocal spell
"
" Disable Bells
"
if has("gui_running")
    au GUIEnter * se vb t_vb=
el
    au VimEnter * set vb t_vb=
en
"
" codingame cpp merge
"
if $CODING_GAME
    au BufWritePost * silent! exe "! codingame-merge >/dev/null 2>&1" | redraw!
en
"
" NERDTree
"
" Close vim if NERDTree is the only window left
au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
" Open NERDTree when no file is selected
au StdinReadPre * let s:std_in=1
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | en
"
" Pretty print xml
"
au BufNewFile,BufRead *.xml nm <silent> <leader>ff :%!XMLLINT_INDENT='    ' xmllint --format %<cr>
" Fix display gliches on Windows?
if has("gui_running")
    au GUIEnter * silent! WToggleClean
en
"
" Watch $MYVIMRC
"
aug reload_myvimrc
    au!
    au BufWritePost $MYVIMRC source $MYVIMRC
    " Refresh Airline to avoid messy display
    au BufWritePost $MYVIMRC if exists(":AirlineRefresh") | :AirlineRefresh | en
aug END
" }}}
