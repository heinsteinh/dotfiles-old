
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
Plugin 'derekwyatt/vim-fswitch'
Plugin 'ilyachur/cmake4vim'
"Plugin 'Rip-Rip/clang_complete'
"Plugin 'rhysd/vim-clang-format'

Plugin 'tpope/vim-vinegar'

"cmake build
Plugin 'mhinz/vim-signify'

Plugin 'dkarter/bullets.vim'

"Debuging:
Plugin 'puremourning/vimspector', { 'do': 'python3 install_gadget.py --enable-vscode-cpptools' }
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools']
"let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools', 'CodeLLDB'




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

Plugin 'frazrepo/vim-rainbow'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/vim-webdevicons'

"Nice to have colorscheme
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'junegunn/seoul256.vim'

set background=dark
set t_Co=256
let g:gruvbox_bold='1'
let g:gruvbox_italic='1'
let g:gruvbox_transparent_bg='1'
let g:gruvbox_italicize_comments='1'
"autocmd vimenter * ++nested colorscheme gruvbox
