""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Author: Mohamed Boughaba                           "
"              Repository: https://github.com/mboughaba/dotfiles               "
"                     Description: My own taste of dotfiles                    "
"                       ╔╗ ┌─┐  ┬╔╦╗┌─┐┬─┐┌─┐┬  ┬┌─┐┌┬┐                        "
"                       ╠╩╗├┤   │║║║├─┘├┬┘│ │└┐┌┘├┤  ││                        "
"                       ╚═╝└─┘  ┴╩ ╩┴  ┴└─└─┘ └┘ └─┘─┴┘                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ViMproved {{{
"
"
"
se nocompatible
filet off
" }}}

" Map Leader {{{
"
"
"
" Map leader key to space
let mapleader=" "
let g:mapleader=" "
" }}}

" Plug {{{
"
"
"
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
cal plug#begin('~/.vim/plugged')
"
" Custom Plugins
"
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'felikz/ctrlp-py-matcher'
Plug 'majutsushi/tagbar',                           { 'on': 'TagbarToggle' }
Plug 'mbbill/undotree',                             { 'on': 'UndotreeToggle' }
Plug 'mboughaba/vim-lessmess'
Plug 'mileszs/ack.vim',                             { 'on': ['Ack', 'AckWindow', 'AckFromSearch', 'LAck', 'LAckWindow', 'LAckFromSearch'] }
Plug 'octol/vim-cpp-enhanced-highlight',            { 'for': ['cpp', 'c'] }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-projectionist'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
if empty($opendev)
    Plug 'Shutnik/jshint2.vim',                     { 'for': ['javascript', 'css', 'html'] }
    Plug 'ap/vim-css-color'
    Plug 'elzr/vim-json',                           { 'for': 'json' }
    Plug 'groenewege/vim-less',                     { 'for': 'less' }
    Plug 'hail2u/vim-css3-syntax',                  { 'for': ['javascript', 'css', 'html'] }
    Plug 'isRuslan/vim-es6',                        { 'for': ['javascript', 'css', 'html'] }
    Plug 'maksimr/vim-jsbeautify',                  { 'for': ['javascript', 'css', 'html'] }
    Plug 'marcweber/vim-addon-mw-utils',            { 'for': ['javascript', 'css', 'html'] }
    Plug 'marijnh/tern_for_vim',                    { 'for': ['javascript', 'css', 'html'] }
    Plug 'othree/html5.vim',                        { 'for': ['javascript', 'css', 'html'] }
    Plug 'pangloss/vim-javascript',                 { 'for': ['javascript', 'css', 'html'] }
    Plug 'scrooloose/syntastic'
    Plug 'shougo/vimproc.vim',                      { 'for': ['javascript', 'css', 'html'] }
    Plug 'tomtom/tlib_vim',                         { 'for': ['javascript', 'css', 'html'] }
    Plug 'vim-scripts/Flex-Development-Support',    { 'for': 'actionscript' }
el
    Plug '~/prj/tts.vim',         { 'for': 'tts' }
    Plug '~/prj/ttser',           { 'for': 'tts' }
en
if has("gui_running")
    Plug 'derekmcloughlin/gvimfullscreen_win32'
    Plug 'tomasr/molokai'
el
    Plug 'altercation/vim-colors-solarized'
    if has("unix") && has("python")
        Plug 'valloric/youcompleteme'
    en
en
"
" Disabled plugs
"
"Plug 'Raimondi/delimitMate'
"Plug 'Shougo/vimproc.vim',                      { 'for': 'typescript' }
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'airblade/vim-gitgutter'
"Plug 'chrisbra/vim-autoread'
"Plug 'dracula/vim'
"Plug 'ervandew/supertab'
"Plug 'herringtondarkholme/yats.vim',            { 'for': 'typescript' }
"Plug 'hushicai/tagbar-javascript.vim',          { 'for': ['javascript', 'css', 'html'] }
"Plug 'junegunn/goyo.vim',                           { 'on': 'Goyo' }
"Plug 'junegunn/vader.vim',                      { 'for': 'vader' }
"Plug 'm42e/vim-gcov-marker'
"Plug 'mattn/emmet-vim',                         { 'for': ['javascript', 'css', 'html'] }
"Plug 'mattn/webapi-vim'
"Plug 'mboughaba/edifact.vim', { 'for': 'edi' }
"Plug 'mboughaba/i3config.vim',                  { 'for': 'i3config' }
"Plug 'mboughaba/vim-gcov-marker'
"Plug 'moll/vim-bbye'
"Plug 'quramy/tsuquyomi',                        { 'for': 'typescript' }
"Plug 'ryanoasis/vim-devicons'
"Plug 'tacahiroy/ctrlp-funky',                       { 'on': 'CtrlPFunky' }
"Plug 'taiansu/nerdtree-ag'
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'tpope/vim-dispatch'
"Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-repeat'
"Plug 'will133/vim-dirdiff'
"
" Let there be dragons
"
" Initialize plugin system
cal plug#end()
filet plugin indent on
" }}}

" Eye Candy {{{
"
"
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
    map <F11> <Esc>:cal libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
el
    " Force 256 colors
    se t_Co=256
en
"
" Cursor, Line & Sign
"
fun! s:patch_colorscheme()
    if !&diff
        " Line number column same background as vim itself
        hi clear LineNr
        " Vertical split line same background as vim itself
        hi clear VertSplit
        " Sign column same background as line numbers
        hi clear SignColumn
        " Hide '~' character at the end of buffer
        hi EndOfBuffer ctermfg=240 guifg=bg
        " customize linenr on gui only
        hi LineNr guifg=#d78787
        hi SignColumn guibg=bg
        " Make cursor stand out
        hi Cursor ctermbg=198 guibg=#D13A82
        hi iCursor ctermbg=201 guibg=#D13A82
        se guicursor=n-v-c:block-Cursor
        se guicursor+=i:ver100-iCursor
        se guicursor+=n-v-c:blinkon0
        se guicursor+=i:blinkwait10
    en
endf
"
" Colorscheme
"
" Enable syntax highlighting
syn enable
" Dark background color
se background=dark
" Set color scheme
if has("gui_running")
    colo molokai
el
    colo solarized
en
cal s:patch_colorscheme()
" }}}

" Vim Settings {{{
"
"
"
" Splits
"
" Open new split panes to right and bottom
se splitbelow
se splitright
"
"
" Make vim find search in subdirectories
"
se path+=**
"
" Show menu
"
se wildmenu
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
    " Dont continue comments when pushing o/O
    set formatoptions-=o
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
" Searches wrap around the end of the file.
se wrapscan
if has("gui_running")
    " Hack to make multiple cursor highlight work properly in gvim
    se selection=inclusive
en
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
" Set timeout time to 80 ms
se ttimeoutlen=80
" Backspace Delete over line breaks
se backspace=indent,eol,start
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
" Enable better wrapping
se wrap
" When wrapping, only at certain characters
se linebreak
" Turn off physical line wrapping
se textwidth=0
" Turn off physical line wrapping
se wrapmargin=0
" Make sure soft line break is done properly.
se nolist
" Customized characters to be shown when list is on
se listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:⎵,eol:¬
" String at start of lines that have been wrapped.
se showbreak=↳
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
" In large projects with so many dependencies, working with cscope is just too
" much for a humain being to deal with.
" Maybe I am using cscope the wrong way, TODO: find a better use of cscope.
"if has("cscope")
"    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
"    se cscopetag
"    " check cscope for definition of a symbol after checking ctags: set to 0
"    " if you want the reverse search order.
"    se csto=1
"    " add any cscope database in current directory
"    if filereadable("cscope.out")
"        cs add cscope.out
"    en
"    " show msg when any other cscope db added
"    se cscopeverbose
"en
"
" Statusline
"
" Always display status line
se laststatus=2
" Excluding version control directories
se wildignore+=*/.git/*,*/.hg/*,*/.svn/*
se wildignore+=*/.res,*/.rex,*/.log,*/.playconf,*/.gsvconf,*/.tags,*/cscope.*
"
" Display less
"
if !&diff
    " Hide showmode as we are uing statusline plugin
    se noshowmode
el
    " Hide line number in diff mode
    se nonu
en
"
" Configure statusline for laster Syntastic use
"
if !&diff
    se statusline+=%#warningmsg#
    if exists(":SyntasticStatuslineFlag") | se statusline+=%{SyntasticStatuslineFlag()} | en
    se statusline+=%*
en
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
"
" Copy from GViM
"
if has("gui_running")
    se clipboard=unnamedplus
en
" }}}

" Plugin Settings {{{
"
"
"
" UltiSnips
"
if has("unix")
    let g:UltiSnipsSnippetDirectories = [$HOME . '/.vim/UltiSnips', 'UltiSnips']
el
    let g:UltiSnipsSnippetDirectories = [$HOME . '/vimfiles/UltiSnips', 'UltiSnips']
en
let g:UltiSnipsUsePythonVersion = 2
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-l>"
"
" Projectionist
"
let g:projectionist_heuristics = {
            \ "*": {
            \  "src/*.cpp": {
            \   "alternate": ["include/{}.hpp","test/src/{}Test.cpp"],
            \   "type": "source"
            \  },
            \  "include/*.hpp": {
            \   "alternate": ["test/src/{}Test.cpp","src/{}.cpp"],
            \   "type": "header"
            \  },
            \  "test/src/*Test.cpp": {
            \   "alternate": ["src/{}.cpp","include/{}.hpp"],
            \   "type": "test"
            \  },
            \  "plugin/*.vim": {
            \   "alternate": ["autoload/{}.vim","test/{}.vader","doc/{}.txt"],
            \   "type": "plugin"
            \  },
            \  "autoload/*.vim": {
            \   "alternate": ["test/{}.vader","doc/{}.txt","plugin/{}.vim"],
            \   "type": "autoload"
            \  },
            \  "test/*.vader": {
            \   "alternate": ["doc/{}.txt","autoload/{}.vim","plugin/{}.vim"],
            \   "type": "test"
            \  },
            \  "doc/*.txt": {
            \   "alternate": ["plugin/{}.vim","autoload/{}.vim","test/{}.vader"],
            \   "type": "doc"
            \  },
            \  "*.play": {
            \   "alternate": ["{}.gsv"],
            \   "type": "play"
            \  },
            \  "*.gsv": {
            \   "alternate": ["{}.play"],
            \   "type": "ghost"
            \  },
            \ }
            \}
"
" Ack & Ag
"
if executable('ag')
    let g:ackprg = 'ag --vimgrep --smart-case'
el
    echoerr "ag Silver Searcher was not found, check if it is installed!"
en
"
" Solarized
"
" Support transparent terminal emulators
let g:solarized_termtrans=1
"
" Tagbar
"
let g:tagbar_right = 1
let g:tagbar_width = 35
"
" NERDCommenter
"
let g:NERDDefaultAlign = 'left'
"
" NERDTree
"
let g:NERDTreeAutoDeleteBuffer = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 35
let NERDTreeIgnore = ['\.job$', '^CVS$', '\.orig', '\~$', '\.res$', '\.rex$', '\.log$', '\.patch$', '\.playconf$', '\.tags$', 'cscope\.out$']
let g:NERDTreeStatusline = "%f"
" source: https://github.com/scrooloose/nerdtree/issues/636
let NERDTreeDirArrowExpandable = " "
let NERDTreeDirArrowCollapsible = " "
"
" YouCompleteMe
"
if has("unix") && has("python")
    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
    let g:ycm_max_diagnostics_to_display = 1000
    let g:ycm_min_num_of_chars_for_completion = 0
    let g:ycm_min_num_identifier_candidate_chars = 0
    let g:ycm_collect_identifiers_from_tags_files = 1
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
en
"
" Airline
"
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
" This is handled by lessmess
let g:airline#extensions#whitespace#enabled = 0
if has("gui_running")
    let g:airline_theme = 'molokai'
el
    let g:airline_theme = 'solarized'
en
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline_highlighting_cache = 1
"
" CtrlP
"
" Index all files
let g:ctrlp_max_files = 0
let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" Enable CtrlP caching
let g:ctrlp_use_caching = 1
" Set the directory to store the cache files
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
" Enable cross-session caching by not deleting the cache files upon exiting
let g:ctrlp_clear_cache_on_exit = 0
" Scan dotfiles and dotdirs
let g:ctrlp_show_hidden = 0
if executable('ag')
    " Make CtrlP even faster using the silver search
    let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
    let g:ctrlp_clear_cache_on_exit = 1
elsei executable('ack')
    let g:ctrlp_user_command = 'ack -k --nocolor -g "" %s'
    let g:ctrlp_clear_cache_on_exit = 1
en
" Make CtrlP open files in new buffer
let g:ctrlp_switch_buffer = 0
" Make CtrlP follow CWD
let g:ctrlp_working_path_mode = 0
" Enable searching by filename instead of full path
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
            \ 'file': '\v\.(res|rex|log|playconf|gsvconf)$'
            \ }
" HACK: Legacy hack to avoid opening files in NERDTree split
let g:ctrlp_dont_split = 'NERD'
let g:ctrlp_dont_split = 'nerdtree'
let g:ctrlp_dont_split = 'NERD_tree_2'
let g:ctrlp_cmd = 'cal CtrlPCustomCommand()'
"
" Syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 0
let g:syntastic_cpp_checkers = ['cppcheck']
let g:syntastic_python_checkers = ['pylint']
"
" Javascript
"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
" }}}

" Keymap {{{
"
"
"
" Precision marks
" back tick jumps to the exact location (line, col)
" whereas tick jumps to only to the line.
"
no ' `
no ` '
"
" Searches
"
" Keep search matches in the middle of the window and pulse the line when moving to them.
nn n nzzzv
nn N Nzzzv
" Easy find/replace
" Normal mode
" Prepares substitute command to replace word under cursor
" globally and with confirmation
nn <Leader>r :,$s/\<<C-R><C-w>\>//gc<Left><Left><Left>
nn <Leader>R :%s/\<<C-R><C-w>\>//gc<Left><Left><Left>
" Visual mode
" Prepares substitute command to replace selected chunck
" globally and with confirmation
vn <Leader>r y<Esc>:,$s/<C-R>"//gc<Left><Left><Left>
vn <Leader>R y<Esc>:,$s/<C-R>"//gc<Left><Left><Left>
"
" visual star search
vn * y/<C-R>"<CR>
"
" Easy help
nn <Leader>h :he <C-R><C-w><CR>
vn <Leader>h y<Esc>:he <C-R>"<CR>
"
" Files
"
" Edit .notes
nn <Leader>0 :e! $HOME/.notes/index.md<CR>
" Edit .vimrc
nn <silent> <Leader>v :e! $MYVIMRC<CR>
"
" lessmess
"
nn <silent> <Leader>l :LessmessDisplayToggle<CR>
"
" Basic indentation fix
"
" Formats the entire file and returns to the line
" = can be used in visual mode to format the block
" to format current line == can be used
nn <silent> <Leader>i mzgg=G`z
"
" Async Job
"
nn <Leader>j :Jobdo<Space>
"
" Ack
"
nn <Leader>a :Ack!<Space>''<Left>
nn <Leader>A :AckWindow!<Space>''<Left>
nn <silent> <Leader>n :AckFromSearch!<CR>
"
" View Tasks
"
" In file
nn <silent> <Leader>t /\vFIXME\|TODO\|HACK\|NOTE<CR>
" In cwd
nn <silent> <Leader>T :Ack!<Space>"FIXME\|TODO\|HACK\|NOTE"<CR>
"
" Paste Toggle
"
nn <F2> :se invpaste paste?<CR>
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
nn <silent> <Tab>   :bnext<CR>
nn <silent> <S-Tab> :bprevious<CR>
"
" Closing buffer without a lot of mess
"
nn <silent> <F4>    :bp<bar>sp<bar>bn<bar>bd<CR>
nn <silent> <F3>    <C-w>q
"
" Enable scroll bind
"
nm <silent> <Leader>scb :se scb!<CR>
"
" Vimdiff
"
if &diff
    " next difference
    nn dj ]c
    " previous difference
    nn dk [c
en
"
" File utilities
"
" Print file path
nm <silent> <Leader>ef :!echo %<CR>
" Echo file
nm <silent> <Leader>cf :!cat %<CR>
"
" Remap number increment and decrement to avoid conflicts with gnu screen
"
" I use Alt+a Alt+x because it is convenient to hold Alt while inc/dec multiple times.
exe "se <M-a>=\ea"
nn <M-a> <C-A>
no <C-a> <NOP>
exe "se <M-x>=\ex"
nn <M-x> <C-X>
no <C-x> <NOP>
"
" Undotree
"
nn <F5> :UndotreeToggle<CR>
"
" Tagbar
"
nn <F8> :TagbarToggle<CR>
"
" Projectionist
"
" I use Alt+z because it is convenient to hold Alt while switching between companions.
" But most of the times I end up using :AV and :AS to make my splits
exe "se <M-z>=\ez"
nn <M-z> :A<CR>
nn <silent> <Leader>sp :AV<CR> <C-w>l :AS<CR> <C-w>h
"
" keymap (habit breaking)
"
no <Up>    <NOP>
no <Down>  <NOP>
no <Left>  <NOP>
no <Right> <NOP>
"
" Clean the mess after highlight search
"
nn <Esc><Esc> :nohl<CR>
"
" Distraction free mode
"
nn <silent> <Leader>g :cal DistractionFeeMode()<CR>
"
" NERDTree
"
nn <F9>  :NERDTreeFind<CR>
nn <F10> :NERDTreeToggle<CR>
"
" Copy from GViM
"
if has("gui_running")
    nn y "+y
    vn y "+y
en
" }}}

" Autocommand {{{
"
"
"
" ftdetect actionscript
"
aug actionscript_ft_detection
    au!
    au BufNewFile,BufRead *.mxml,*.as,*.MXML,*.AS     se ft=actionscript
aug end
"
" Auto DeHexify
"
if &diff
    aug auto_de_hexify
        au!
        au BufRead *.play.log,*.gsv.log :cal DeHexify()
    aug end
en
"
" Disable paste mode on InsertLeave
"
aug auto_disable_paste
    au!
    au InsertLeave * se nopaste
aug end
"
" Lessmess disable by FileType
"
aug disable_lessmess
    au!
    au FileType vader let b:lessmess_disable_buffer = 1
aug end
"
" Spell
"
aug set_spell
    au!
    au BufRead,BufNewFile *.md      setlocal spell
    au BufRead,BufNewFile *.tex     setlocal spell
    au BufRead,BufNewFile *.txt     setlocal spell
    au FileType           gitcommit setlocal spell
aug end
"
" Disable Bells
"
aug disable_bell
    au!
    if has("gui_running")
        au GUIEnter * se vb t_vb=
    el
        au VimEnter * se vb t_vb=
    en
aug end
"
" codingame cpp merge
"
if $CODING_GAME
    aug merge_code
        au!
        au BufWritePost * sil! exe "! codingame-merge >/dev/null 2>&1" | redraw!
    aug end
en
"
" Tagbar
"
" I don't read tags that often on projects I am working on, but it can be useful for
" unfamiliar source code.
"if !&diff
"    aug toggle_tagbar
"        au!
"        au FileType * nested :cal tagbar#autoopen(0)
"    aug end
"en
"
" NERDTree
"
aug nerdtree_custom
    au!
    " Close vim if NERDTree is the only window left
    au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
    " Open NERDTree when no file is selected
    " I prefer not to open NERDTree at startup
    "au StdinReadPre * let s:std_in=1
    "au VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | en
    "au FileType nerdtree setl nolist
aug end
"
" Pretty print xml
"
aug pretty_print
    au!
    au BufNewFile,BufRead *.xml nm <silent> <Leader>ff :%!XMLLINT_INDENT='    ' xmllint --format %<CR>
    if &diff
        au BufNewFile,BufRead *.gsv.log,*.play.log nm <silent> <Leader>fs :cal FormatSplitXml()<CR>
    en
aug end
"
" Syntax not working for certain colorscheme
" source: https://github.com/elzr/vim-json/issues/50
"
aug patch_json_syntax_hi
    au!
    au FileType json hi! def link jsonKeyword Identifier
aug end
"
" Re-patch colorscheme
"
aug patch_colors
    au!
    au ColorScheme * cal s:patch_colorscheme()
aug end
"
" Watch $MYVIMRC
"
aug reload_myvimrc
    au!
    au BufWritePost $MYVIMRC so $MYVIMRC
    " Refresh Airline to avoid messy display
    " tabline extension requires AirlineRefresh to be called twice
    " source: https://github.com/vim-airline/vim-airline/issues/539
    au BufWritePost $MYVIMRC if exists(":AirlineRefresh") | :AirlineRefresh | en | if exists(":AirlineRefresh") | :AirlineRefresh | en
aug end
" }}}

" Custom functions {{{
"
"
"
" CtrlP & NERDTree hack
"
" HACK: Legacy hack to avoid opening files in NERDTree split
fun! CtrlPCustomCommand()
    let c = 0
    let wincount = winnr('$')
    " Don't open it here if current buffer is not writable (e.g. NERDTree)
    wh !empty(getbufvar(+expand("<abuf>"), "&buftype")) && c < wincount
        exe 'wincmd w'
        let c = c + 1
    endw
    exe 'CtrlP'
endf
"
" Custom distraction free mode enable
"
fun! DistractionFeeMode()
    if exists(":NERDTreeClose")
        :NERDTreeClose
    en
    if exists(":TagbarClose")
        :TagbarClose
    en
    if exists(":UndotreeHide")
        :UndotreeHide
    en
endf
"
" DeHexify & Format XML
"
if &diff
    fun! DeHexify()
        :sil %s/\\x1D/+/ge
        :sil %s/\\x1F/:/ge
        :sil %s/\\x1C/'/ge
        :sil %s/\\x19/*/ge
        :sil diffupdate
    endf
    fun! FormatSplitXml()
        :sil s/>/>\&\r''/ge
    endf
en
"
" Run Async Job
"
fun! StartJob(command)
    if !has('job')
        retu
    en

    cal job_start(a:command, {'out_cb': 'JobHandler', 'err_cb': 'ErrHandler', 'close_cb': 'CloseHandler'})
endf
"
" Job output handler
fun! JobHandler(channel, msg)
    echomsg "Job running: " . a:msg
endf
"
" Job error handler
fun! ErrHandler(channel, msg)
    echomsg "Job encountered err: " . a:msg
endf
"
" Channel close handler
fun! CloseHandler(channel)
    echomsg "Job closed"
endf
" }}}

" Commands {{{
"
" Start Async Job
"
com! -nargs=1 Jobdo :cal StartJob(<f-args>)
" }}}

" vim: se sw=4 sts=4 et fdm=marker:
