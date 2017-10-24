se nocompatible                " Be iMproved, required
filet off                    " Required

" Vundle
se rtp+=~/.vim/bundle/Vundle.vim
cal vundle#begin()

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
if $WORK_ENV
    Plugin 'mboughaba/edifact.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/tts.vim'
    Plugin 'file:///remote/users1/mboughaba/prj/ttser'
en

cal vundle#end()               " Required
filet plugin indent on       " Required

" Configuration
se hidden                      " Hide buffers
se showcmd                     " Show current command
se showmode                    " Show current mode
se encoding=utf-8              " UTF-8 encoding
if has("gui_running")
    se rop=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
en
if &modifiable
    se ff=unix                     " Use unix style line endings
en
se ruler                       " Show ruler
se autoread                    " Auto reload
se ttyfast                     " Fast terminal

" Load non default configuration
se exrc                        " Force vim to source vimrc if present in working directory.
se secure                      " Restrict write & shell commands when non-default vimrc.

" Temp Files
se nobackup                    " No backup file
se noswapfile                  " No swap file

" vim v7.3 specific options
if version >= 703
    " Undo
    se undofile                    " Persistent undo
    se undodir=~/.vim/undo         " Location to store undo history
    se undolevels=1000             " Maximum number of changes
    se undoreload=10000            " Maximum number of lines to save for undo on a buffer reload

    " Joining
    se formatoptions+=j            " Delete comment character when joining commented lines

    " Line Numbers
    "se rnu                        " Relative line numbers, no thanks :)
en

" Line Numbers
se nu                          " Show line numbers

" Scrolling
se scrolloff=5                 " Keep at least 5 lines above/below
se sidescrolloff=5             " Keep at least 5 columns left/right

" Searching
se incsearch                   " Incremental search
se hlsearch                    " Highlight matches
se ignorecase                  " Case-insensitive search
se smartcase                   " Unless search contains uppercase letter
se showmatch                   " Show matching bracket

" Indentation
se smarttab                    " Better tabs
se smartindent                 " Inserts new level of indentation
se autoindent                  " Copy indentation from previous line
se tabstop=4                   " Columns a tab counts for
se softtabstop=4               " Columns a tab inserts in insert mode
se shiftwidth=4                " Columns inserted with the re-indent operations
se shiftround                  " Always indent by multiple of shift width
se expandtab                   " Always use spaces instead of tabs

" Joining
se nojoinspaces                " Only one space when joining lines

" Key sequence timeout
se ttimeout                    " Enable time out
se ttimeoutlen=100             " Set timeout time to 100 ms

" Backspace
se backspace=indent,eol,start  " Delete over line breaks

" Mouse
se mousehide                   " Hide mouse when typing
se mouse=nicr                  " No visual selection from using mouse

" Typos
cnorea W w
cnorea Q q

" Colors & Syntax
if has("gui_running")
    se guioptions-=T
    se guioptions-=m
    se guioptions-=r
    se guioptions-=m  "remove menu bar
    se guioptions-=L  "remove left-hand scroll bar
    se guifont=InconsolataGo\ NF:h12
    au GUIEnter * simalt ~x
    map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
el
    se t_Co=256                    " Force 256 colors
    se term=xterm-256color
en

" Colorscheme
syn enable                   " Enable syntax highlighting
se background=dark             " Dark background color
if has("gui_running")
    """ Molokai
    let g:molokai_original = 1
    let g:rehash256 = 1
    colo molokai           " Set color scheme
el
    """ Solarized
    let g:solarized_termtrans=1     " Support transparent terminal emulators
    colo solarized           " Set color scheme
en
" GitGutter & Signature
"let g:SignatureMarkTextHLDynamic = 1
let g:gitgutter_override_sign_column_highlight = 0
se signcolumn=yes
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
hi clear LineNr          " Line number column same background as vim itself
hi clear SignColumn      " Sign column same background as line numbers
hi LineNr ctermfg=219 guifg=#d78787
hi Cursor ctermbg=198 guibg=#D13A82
hi iCursor ctermbg=201 guibg=#D13A82
"hi NonText ctermfg=234 guifg=#404235
hi NonText ctermfg=234 guifg=bg
se guicursor=n-v-c:block-Cursor
se guicursor+=i:ver100-iCursor
se guicursor+=n-v-c:blinkon0
se guicursor+=i:blinkwait10

" C++ Syntax highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
"let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

" Wrapping
se nowrap                      " No wrapping
se linebreak                   " When wrapping, only at certain characters
se textwidth=0                 " Turn off physical line wrapping
se wrapmargin=0                " Turn off physical line wrapping

" Map leader key to space
let mapleader=" "

" Completion Menu
se completeopt=longest,menuone " Inserts the longest common text and
                                " show menu even with only one item

" Paste Toggle
nn <F2> :se invpaste paste?<CR>
se pastetoggle=<F2>

" Spell Checking
se spelllang=en_us             " Default language
se complete+=kspell            " Word completion
nn <silent> <F7> :se spell!<CR>
au BufRead,BufNewFile *.md  setlocal spell
au BufRead,BufNewFile *.tex setlocal spell
au FileType gitcommit setlocal spell

" Disable Bells
se noeb vb t_vb=
au GUIEnter * se vb t_vb=

" Wrapping Shortcuts
vm Q gq
nm Q gqap

" Lessmess
let g:enable_lessmess_onsave = 1
let g:enable_lessmess_highlighting = 1
let g:lessmess_highlighting_map = '<leader>l'

" Buffers & Window Navigation
nn <silent> <Tab> :bnext<CR>
nn <silent> <S-Tab> :bprevious<CR>
nn <silent> <F4>    :Bdelete<CR>
nn <silent> <F3>  <C-w>q

" Enable Copy/Paste, no thanks :)
"vm <C-c> "+yi
"vm <C-x> "+c
"vm <C-v> c<ESC>"+p
"im <C-v> <ESC>"+pa

"enable scroll bind
nm <silent> <Leader>scb :se scb!<CR>

" vimdiff
let g:DirDiffDynamicDiffText = 1
" next difference
exe "se <M-n>=\en"
nn <M-n> ]c
" previous difference
exe "se <M-p>=\ep"
nn <M-p> [c
if $WORK_ENV
    " de-hexify
    exe "se <M-h>=\eh"
    nn <M-h> :%s/\\x1D/+/ge <CR> :%s/\\x1F/:/ge <CR> :%s/\\x1C/'/ge <CR> :%s/\\x19/*/ge <CR> :diffupdate<CR>
en

" File utilities
nm <silent> <leader>ef :!echo %<CR>               " Print file path
nm <silent> <leader>cf :!cat %<CR>                " Echo file

" Remap number increment and decrement to avoid coflicts with gnu screen
exe "se <M-a>=\ea"
nn <M-a> <C-A>
exe "se <M-x>=\ex"
nn <M-x> <C-X>

" Watch $MYVIMRC
aug reload_myvimrc
    au!
    au BufWritePost $MYVIMRC source $MYVIMRC
    " Refresh Airline to avoid messy display
    au BufWritePost $MYVIMRC if exists(":AirlineRefresh") | :AirlineRefresh | en
aug END

" Ctags
se tags=.tags;                 " Find .tags recursively

" Undotree
nn <F5> :UndotreeToggle<CR>

" Tagbar
nn <F8> :TagbarToggle<CR>
let g:tagbar_right = 1
let g:tagbar_width = 35
if !&diff
    au FileType * nested :cal tagbar#autoopen(0)
en

" FSwitch
exe "se <M-z>=\ez"
nn <M-z> :FSHere<CR>
nm <silent> <Leader>oL :FSSplitRight<cr>
nm <silent> <Leader>oH :FSSplitLeft<cr>
nm <silent> <Leader>oK :FSSplitAbove<cr>
nm <silent> <Leader>oj :FSBelow<cr>

" codingame cpp merge
if $CODING_GAME
    "au BufWritePost * ! codingame-merge
    au BufWritePost * silent! exe "! codingame-merge >/dev/null 2>&1" | redraw!
en

" keymap (habit breaking)
no <Up> <NOP>
no <Down> <NOP>
no <Left> <NOP>
no <Right> <NOP>

nn <Esc><Esc> :nohl<CR>

" NERDTree
" Distraction free mode
nm <silent> <Leader><space> :NERDTreeClose<CR> :TagbarClose<CR>

"let NERDTreeShowHidden=1                " show dotfiles and dotdirs
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 35
let NERDTreeIgnore = ['\.job$', '^CVS$', '\.orig', '\~$', '\.res$', '\.rex$', '\.log$', '\.playconf$']
let g:NERDTreeDirArrows = 0
let g:NERDTreeStatusline = "%f"
nn <F9> :NERDTreeFind<CR>
nn <F10> :NERDTreeToggle<CR>
au StdinReadPre * let s:std_in=1
" Close vim if NERDTree is the only window left
au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
" Open NERDTree when no file is selected
au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | en
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
        nn <F12> :YcmForceCompileAndDiagnostics<CR>
        nn <C-LeftMouse> :YcmCompleter GoTo<CR>
    el
        " omnicppcomplete
        let OmniCpp_GlobalScopeSearch = 1
        let OmniCpp_NamespaceSearch = 1
    en
el
    " omnicppcomplete
    let OmniCpp_GlobalScopeSearch = 1
    let OmniCpp_NamespaceSearch = 1
en


" Airline
se laststatus=2                " Always display status line
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

" Devicons
let g:webdevicons_enable_denite = 0


" IndentLine
if has("gui_running")
let g:indentLine_char = '┆'                      " Change Indent Char
en


" CtrlP
let g:ctrlp_max_files = 0                        " Index all files
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_use_caching = 1                      " Enable CtrlP caching
let g:ctrlp_show_hidden = 1                      " Scan dotfiles and dotdirs
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
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*        " Linux/MacOSX, Excluding version control directories
se wildignore+=*/.res,*/.rex,*/.log,*/.playconf,*/.gsvconf
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
nn <c-h> :CtrlPFunky<Cr>
nn <s-h> :exe 'CtrlPFunky ' . expand('<cword>')<Cr>

" UltiSnips
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

" Syntastic
se statusline+=%#warningmsg#
se statusline+=%{SyntasticStatuslineFlag()}
se statusline+=%*
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
en

" Gist
let g:gist_post_private = 1     " Private by default
let g:gist_detect_filetype = 1  " Detect type from the file name
let g:gist_update_on_write = 2  " Only :w! updates a gist

" Pretty print xml
au BufNewFile,BufRead *.xml nm <silent> <leader>ff :%!XMLLINT_INDENT='    ' xmllint --format %<cr>

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
