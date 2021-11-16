
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'


Plugin 'bfrg/vim-cpp-modern'
Plugin 'octol/vim-cpp-enhanced-highlight'
" Provides a command to close a buffer but keep its window.
Plugin 'qpkorr/vim-bufkill'

" fzf fuzzy stuff happen here!
Plugin 'mileszs/ack.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'tracyone/fzf-funky',{'on': 'FzfFunky'}

" Automatically change directory to project root
Plugin 'airblade/vim-rooter'

" Syntax highlight
Plugin 'sheerun/vim-polyglot'
" Code comments
Plugin 'tpope/vim-commentary'

"Status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"vim simple status line
"Plugin 'itchyny/lightline.vim'

" UI
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'PhilRunninger/nerdtree-visual-selection'

"Provides auto-balancing and some expansions for parens, quotes, etc.
Plugin 'delimitMate.vim'

"Plugin 'markonm/traces.vim' " Preview for substitute commands.
Plugin 'roman/golden-ratio' " Automatically resize windows.
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'joshdick/onedark.vim'

Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
"CTage management for
Plugin 'ludovicchabant/vim-gutentags'
"Plugin 'majutsushi/tagbar'
Plugin 'majutsushi/tagbar', {'on': ['TagbarOpen', 'TagbarToggle']}
Plugin 'tpope/vim-dispatch'

"Track the engine.
Plugin 'SirVer/ultisnips'
"Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" C++ Algorithms snippets (using mnemonics)
Plugin 'dawikur/algorithm-mnemonics.vim'

"Plugin to work with register in vim
Plugin 'junegunn/vim-peekaboo'

"every variable is a different color,
Plugin 'jaxbot/semantic-highlight.vim'
"nnoremap <Leader>s :SemanticHighlightToggle<cr>
 " nnoremap <Leader>sh :SemanticHighlightToggle<cr>
 " autocmd FileType c SemanticHighlight
 " autocmd FileType c++ SemanticHighlight

"Switch from header to implementation and vice versa!
Plugin 'derekwyatt/vim-fswitch'
nmap <silent> <c-w>o :FSHere<cr>
nmap <silent> <c-w>oj :FSHereHere<cr>
nmap <silent> <c-w>ok :FSAbove<cr>
nmap <silent> <c-w>ol :FSSplitAbove<cr>
nmap <silent> <c-w>oh :FSHere<cr>

"Plugin 'ilyachur/cmake4vim'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'rhysd/vim-clang-format'

Plugin 'tpope/vim-vinegar'

"cmake build
"Signify (or just Sy) uses the sign column to indicate added, modified and removed lines in a file that is managed by a version control system (VCS)
Plugin 'mhinz/vim-signify'


"{{{ Cmake build config
Plugin 'cdelledonne/vim-cmake'
let g:cmake_config = "Debug"
let g:cmake_link_compile_commands = 1

if hostname() == "BHI4PCH7D3"
    let g:cmake_build_dir_location = "build/build.windows"
    let g:cmake_generate_options = [
    \ '-G ',
    \ 'Visual Studio 16 2019',
    \ '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON',
    \ ]
    "let g:cmake_generate_options = ["Visual Studio 16 2019"]
else
   let g:cmake_build_dir_location = "build/build.unix"
   let g:cmake_generate_options = [
  \ '-G Ninja',
  \ '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON',
  \ ]
   " let g:cmake_generate_options = ["Unix Makefiles"]
   "let g:cmake_generate_options = ['-Bbuild/build.unix', '-GNinja', '-DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE']
endif

"}}}

Plugin 'dkarter/bullets.vim'

"Debuging:
Plugin 'puremourning/vimspector', { 'do': 'python3 install_gadget.py --enable-vscode-cpptools' }
let g:vimspector_enable_mappings = 'HUMAN'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools']
"let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB'

"Windows:
"Plugin 'gauteh/vim-cppman' "Color man text documentation
"Plugin 'jmckiern/vim-shoot', { 'do': '\"./install.py\" chromedriver' } "Take sscreenshot of a portion of code

Plugin 'vim-syntastic/syntastic'

Plugin 'dominikduda/vim_current_word'
let g:vim_current_word#enabled = 1
"autocmd BufAdd NERD_tree_*,*.cpp,*c,*cxx,*h,*hpp :let g:vim_current_word#enabled = 1
let g:vim_current_word#highlight_twins = 1
let g:vim_current_word#highlight_current_word = 1
let g:vim_current_word#highlight_delay = 100
let g:vim_current_word#highlight_only_in_focused_window = 1

"A negative number makes the highlight persistent.
"let g:highlightedyank_highlight_duration = -1

"https://github.com/MattesGroeger/vim-bookmarks
Plugin 'MattesGroeger/vim-bookmarks'
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1

"Plugin 'psliwka/vim-smoothie'          " wonderful scroll up/down experience

"Far.vim makes it easier to find and replace text through multiple files. It's inspired by fancy IDEs, like IntelliJ and Eclipse, that provide cozy tools for such tasks.
Plugin 'brooth/far.vim'
"example usage
":Farr foo bar **/*.py



"Plugin 'ntpeters/vim-better-whitespace'
"let g:better_whitespace_ctermcolor='lightcyan'
"let g:better_whitespace_guicolor='lightcyan'
""let g:better_whitespace_guicolor = 'white'
"let g:strip_whitespace_confirm=1
"let g:better_whitespace_enabled=1
"let g:strip_whitespace_on_save=1
"let g:better_whitespace_filetypes_blacklist=[
"            \ 'startify',
"            \ 'diff',
"            \ 'gitcommit',
"            \ 'unite',
"            \ 'qf',
"            \ 'help',
"            \ 'coc-explorer',
"            \ 'vista',
"            \ 'floaterm',
"            \ 'dashboard'
"            \ ]


"{{{ System Specifics Plugins
if hostname() == "BHI4PCH7D3"
else
"    Plugin 'jeaye/color_coded'
endif
"}}}

Plugin 'mhinz/vim-startify'

"Shader syntax support
Plugin 'tikhomirov/vim-glsl'

" Show hex codes as colours
Plugin 'chrisbra/Colorizer'

" Gruvbox Community theme.  !!!!Danger for fzf make it Hang!!!
Plugin 'morhetz/gruvbox'
Plugin 'bluz71/vim-nightfly-guicolors'
let g:color_coded_enabled = 1
let g:color_coded_filetypes = ['c', 'cpp', 'objc']

Plugin 'frazrepo/vim-rainbow'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/vim-webdevicons'

"Nice to have colorscheme
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'junegunn/seoul256.vim'
Plugin 'navarasu/onedark.nvim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sainnhe/everforest'

"set background=dark
"set t_Co=256
"let g:gruvbox_bold='1'
"let g:gruvbox_italic='1'
"let g:gruvbox_transparent_bg='1'
"let g:gruvbox_italicize_comments='1'
"autocmd vimenter * ++nested colorscheme gruvbox
