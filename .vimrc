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
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mboughaba/vim-lessmess'
"Plug 'mileszs/ack.vim', { 'on': [
Plug 'mboughaba/ack.vim', { 'on': [
      \ 'Ack',
      \ 'AckWindow',
      \ 'AckFromSearch',
      \ 'LAck',
      \ 'LAckWindow',
      \ 'LAckFromSearch'] }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-projectionist'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['cpp', 'c'] }
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'altercation/vim-colors-solarized'
Plug 'mboughaba/i3config.vim', { 'for': 'i3config' }
if empty($opendev)
  Plug 'mhinz/vim-startify'
  Plug 'Chiel92/vim-autoformat'
  Plug 'Quramy/tsuquyomi', { 'for': 'typescript' }
  Plug 'airblade/vim-gitgutter'
  Plug 'ap/vim-css-color'
  Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
  Plug 'elzr/vim-json', { 'for': 'json' }
  Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
  Plug 'hail2u/vim-css3-syntax', { 'for': ['javascript', 'css', 'html'] }
  Plug 'isRuslan/vim-es6', { 'for': ['javascript', 'css', 'html'] }
  Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
  Plug 'marcweber/vim-addon-mw-utils', { 'for': ['javascript', 'css', 'html'] }
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'css', 'html'] }
  Plug 'othree/html5.vim', { 'for': ['javascript', 'css', 'html'] }
  Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'css', 'html'] }
  Plug 'scrooloose/syntastic'
  Plug 'shougo/vimproc.vim', { 'for': ['typescript', 'javascript', 'css', 'html'] }
  Plug 'tomtom/tlib_vim', { 'for': ['javascript', 'css', 'html'] }
  Plug 'tpope/vim-fugitive'
  Plug 'vim-scripts/Flex-Development-Support', { 'for': 'actionscript' }
  Plug 'chrisbra/vim-autoread'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'mattn/emmet-vim', { 'for': ['typescript', 'javascript', 'css', 'html'] }
  Plug '~/def.vim.git', { 'for': 'def' }
el
  Plug '~/prj/tts.vim', { 'for': 'tts' }
  Plug '~/prj/ttser', { 'for': 'tts' }
en
if has("win32")
  Plug 'derekmcloughlin/gvimfullscreen_win32'
  Plug 'vim-scripts/zoom.vim'
elsei has("unix") && has("python")
  Plug 'valloric/youcompleteme'
en
"
" Disabled plugs
"
"Plug 'Shutnik/jshint2.vim', { 'for': ['javascript', 'css', 'html'] }
"Plug 'groenewege/vim-less', { 'for': 'less' }
"Plug 'maksimr/vim-jsbeautify', { 'for': ['javascript', 'css', 'html'] }
"Plug 'hushicai/tagbar-javascript.vim', { 'for': ['javascript', 'css', 'html'] }
"Plug 'junegunn/vader.vim', { 'for': 'vader' }
"Plug 'm42e/vim-gcov-marker'
"Plug 'mattn/webapi-vim'
"Plug 'mboughaba/edifact.vim', { 'for': 'edi' }
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
  se guifont=Source_Code_Pro_for_Powerline:h10:cANSI:qDRAFT
  "aug maximize_window
  "  au!
  "  au GUIEnter * simalt ~x
  "aug end
  se lines=999 columns=999
  se guioptions=icpM
  if has('win32') || has('win64')
    "map <F11> <Esc>:cal libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    map <Leader>11 <Esc>:cal libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    " Improve rendering in GViM
    if (v:version == 704 && has("patch393")) || v:version > 704
      se renderoptions=type:directx,level:0.75,gamma:1.25,contrast:0.25,
            \geom:1,renmode:5,taamode:1
    en
  en
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
" Solarized Support transparent terminal emulators
let g:solarized_italic = 0
let g:solarized_contrast = "low"
let g:solarized_termtrans = 1
let g:solarized_termcolors = 256
colo solarized
" Apply colorscheme changes
cal s:patch_colorscheme()
" }}}

" Vim Settings {{{
"
"
"
" Display tooltip (used for typescript)
"
"se ballooneval
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
  se rnu
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
  " Hack to make multiple cursor highlight word properly in gvim
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
se tabstop=2
" Columns a tab inserts in insert mode
se softtabstop=2
" Columns inserted with the re-indent operations
se shiftwidth=2
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
"se pastetoggle=<F2>
se pastetoggle=<Leader>2
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
" Startify
"
let g:startify_change_to_dir          = 1
let g:startify_change_to_vcs_root     = 1
let g:startify_enable_special         = 1
let g:startify_files_number           = 8
let g:startify_fortune_use_unicode    = 1
let g:startify_session_autoload       = 0
let g:startify_session_persistence    = 1
let g:startify_update_oldfiles        = 0
let g:startify_use_env                = 1
let g:startify_session_before_save = [
      \ 'silent! NERDTreeClose',
      \ 'silent! UndotreeHide',
      \ 'silent! TagbarClose'
      \ ]
"
" Autoformat
"
let g:formatdef_js_editorconfig = '"js-beautify --editorconfig"'
let g:formatdef_json_editorconfig = '"js-beautify --editorconfig"'
let g:formatters_javascript = ['js_editorconfig']
let g:formatters_json = ['json_editorconfig']
let g:formatdef_html_editorconfig = '"html-beautify --editorconfig"'
let g:formatters_html = ['html_editorconfig']
"
" vim-json
"
let g:vim_json_syntax_conceal = 0
"
" devicons
"
let g:webdevicons_enable_denite = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
"
" tsuquyomi
"
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_single_quote_import = 1
let g:tsuquyomi_shortest_import_path = 1
"
" Ack & Ag
"
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
el
  echoerr "ag Silver Searcher was not found, check if it is installed!"
en
let g:ackhighlight = 0
"
" UltiSnips
"
if has("unix")
  let g:UltiSnipsSnippetDirectories = [$HOME . '/.vim/UltiSnips', 'UltiSnips']
el
  let g:UltiSnipsSnippetDirectories = [$HOME . '/vimfiles/UltiSnips', 'UltiSnips']
en
"let g:UltiSnipsUsePythonVersion = 2
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
      \  "src/app/*.ts": {
      \   "alternate": ["src/app/{}.spec.ts"],
      \   "type": "ts"
      \  },
      \  "src/app/*.spec.ts": {
      \   "alternate": ["src/app/{}.ts"],
      \   "type": "spec"
      \  },
      \  "src/app/*.scss": {
      \   "alternate": ["src/app/{}.html"],
      \   "type": "sass"
      \  },
      \  "src/app/*.css": {
      \   "alternate": ["src/app/{}.html"],
      \   "type": "css"
      \  },
      \  "src/app/*.html": {
      \   "alternate": ["src/app/{}.scss","src/app/{}.css"],
      \   "type": "html"
      \  },
      \ }
      \}
"
" Tagbar
"
let g:tagbar_autofocus=0
let g:tagbar_compact=1
let g:tagbar_right = 1
let g:tagbar_width = 35
let g:tagbar_type_typescript = {
      \ 'ctagstype': 'typescript',
      \ 'kinds': [
      \ 'c:classes',
      \ 'n:modules',
      \ 'f:functions',
      \ 'v:variables',
      \ 'v:varlambdas',
      \ 'm:members',
      \ 'i:interfaces',
      \ 'e:enums',
      \ ]
      \ }
"
" NERDCommenter
"
" Align line-wise comment delimiters
" flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Add speces after comment delimiters by default
let g:NERDSpaceDelims = 1
"
" NERDTree
"
let g:NERDTreeAutoDeleteBuffer = 1
let NERDTreeWinPos = "left"
let NERDTreeWinSize = 35
let NERDTreeIgnore = [
      \ '\.job$',
      \ '^CVS$',
      \ '\.orig',
      \ '\~$',
      \ '\.res$',
      \ '\.rex$',
      \ '\.log$',
      \ '\.patch$',
      \ '\.playconf$',
      \ '\.tags$',
      \ 'cscope\.out$'
      \ ]
let g:NERDTreeStatusline = "%f"
" source: https://github.com/scrooloose/nerdtree/issues/636
let NERDTreeDirArrowExpandable = " "
let NERDTreeDirArrowCollapsible = " "
"
" NERDTree File highlighting
"
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
" enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1
" highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1
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
let g:NERDTreePatternMatchHighlightColor['node_modules\/'] = s:lightPurple
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
  "nn <F12> :YcmForceCompileAndDiagnostics<CR>
  nn <Leader>12 :YcmForceCompileAndDiagnostics<CR>
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
let g:airline_theme = 'solarized'
let g:airline_section_z = airline#section#create([
      \ 'windowswap',
      \ '%3p%% ',
      \ 'linenr',
      \ ':%3v'])
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
" Scan dotfiles and dotdirs
let g:ctrlp_show_hidden = 0
let g:ctrlp_clear_cache_on_exit = 0
if executable('ag')
  " Make CtrlP even faster using the silver search
  let g:ctrlp_user_command = 'ag -l --nocolor -g "" %s'
  let g:ctrlp_clear_cache_on_exit = 1
elsei executable('ack')
  let g:ctrlp_user_command = 'ack -k --nocolor -g "" %s'
en
" Make CtrlP open files in new buffer
let g:ctrlp_switch_buffer = 0
" Make CtrlP follow CWD
let g:ctrlp_working_path_mode = 0
" Enable searching by filename instead of full path
let g:ctrlp_by_filename = 1
let g:ctrlp_custom_ignore = {
      \ 'file': '\v\.(res|rex|log|playconf|gsvconf)$',
      \ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|bower_components|coverage|doc|dist)$'
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
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tslint']
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
" Easy surround
"
vn '   di'<ESC>pa'<ESC>
" FIXME: This is conflicting with paste mode S-Insert
if !has("gui_running")
  vn " di"<ESC>pa"<ESC>
en
vn `   di`<ESC>pa`<ESC>
vn [   di[<ESC>pa]<ESC>
vn {   di{<ESC>pa}<ESC>
vn [(  di[(<ESC>pa)]<ESC>
vn {{  di{{ <ESC>pa }}<ESC>
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
" Smooth scroll
"
nn <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
nn <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
nn <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
nn <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>
"
" Autoformat
"
exe "se <M-i>=\ei"
nn <M-i> :Autoformat<CR>
"
" tsuquyomi Typescript Import
"
exe "se <M-l>=\el"
nn <M-l> :TsuImport<CR>
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
nn <silent> <Leader>t /\vFIXME\|TODO\|HACK<CR>
" In cwd
nn <silent> <Leader>T :Ack!<Space>"FIXME\|TODO\|HACK"<CR>
"
" Paste Toggle
"
"nn <F2> :se invpaste paste?<CR>
"
" Spell Checking
"
"nn <silent> <F7> :se spell!<CR>
nn <silent> <Leader>7 :se spell!<CR>
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
" Get rid of function key bindings
"nn <silent> <F4>    :bp<bar>sp<bar>bn<bar>bd<CR>
" No longer useful, <C-w>q is good enough
"nn <silent> <F3>    <C-w>q
nn <silent> <C-w>w :bp<bar>sp<bar>bn<bar>bd<CR>
nn <silent> <C-w>a :bufdo bp<bar>sp<bar>bn<bar>bd<CR>
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
"nn <F5> :UndotreeToggle<CR>
nn <Leader>5 :UndotreeToggle<CR>
"
" Tagbar
"
"nn <F8> :TagbarToggle<CR>
nn <Leader>8 :TagbarToggle<CR>
"
" Projectionist
"
" I use Alt+z because it is convenient to hold Alt while switching between companions.
" But most of the times I end up using :AV and :AS to make my splits
exe "se <M-z>=\ez"
nn <M-z> :A<CR>
"nn <silent> <Leader>sp :AV<CR> <C-w>l :AS<CR> <C-w>h
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
nn <silent> <Leader>G :Goyo<CR>
"
" NERDTree
"
"nn <F9>  :NERDTreeFind<CR>
nn <Leader>9  :NERDTreeFind<CR>
"nn <F10> :NERDTreeToggle<CR>
nn <Leader>10 :NERDTreeToggle<CR>
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
" Autoformat on save
"
"aug auto_format_onsave
"  au!
"  au FileType pug let b:autoformat_autoindent = 0
"  au BufWritePre *.ts :Autoformat
"  au BufWritePost *.ts :execute "normal! O\<ESC>dd"
"aug end
"
" Startify at startup
"
aug startify_at_startup
  au!
  au VimEnter *
        \   if !argc()
        \ |   Startify
        \ | en
aug end
"
" Typescript Tsu
"
aug typescript_balloon
  au!
  "    au FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
  au FileType typescript nmap <buffer> <Leader>? : <C-u>echo tsuquyomi#hint()<CR>
aug end
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
" NERDTree
"
" devicon integration with nerdtree
"aug devicon_nerdtree_hack
"    au!
"    au FileType nerdtree syntax match hideBracketsInNerdTree "\]" conceal
"    au FileType nerdtree syntax match hideBracketsInNerdTree "\[" conceal
"aug end
aug nerdtree_custom
  au!
  " Close vim if NERDTree is the only window left
  au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | en
  " Open NERDTree when no file is selected
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

" vim: se sw=2 sts=2 et fdm=marker:
