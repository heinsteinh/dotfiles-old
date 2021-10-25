" Search & Navigation

" Git
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'airblade/vim-gitgutter'

" UI
Plugin 'justinmk/vim-matchparenalways' " Scope highlighting
Plugin 'flazz/vim-colorschemes'
Plugin 'chriskempson/base16-vim'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'PhilRunninger/nerdtree-visual-selection'



Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'

" Gruvbox Community theme.
"Plugin 'gruvbox-community/gruvbox'

Plugin 'frazrepo/vim-rainbow'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ryanoasis/vim-webdevicons'

Plugin 'godlygeek/tabular'
Plugin 'jlanzarotta/bufexplorer'
"Plugin 'yuttie/comfortable-motion.vim'

"Completion plugin goes here
"Plugin 'shougo/neocomplete.vim'
"Plugin 'vim-scripts/AutoComplPop'
"Plugin 'vim-scripts/AutoComplPop'   " too slow
"Plugin 'Shougo/neocomplete.vim' " faster than AutoComplPop
"Plugin 'valloric/youcompleteme'
"Plugin 'adah1972/ycmconf'   "https://github.com/adah1972/ycmc




if hostname() == "BHI4PCH7D3"
else
end

"Plugin 'jiangmiao/auto-pairs'
" http://vimawesome.com/plugin/ctrlp-vim-red
" This does the same thing as Sublime’s Ctrl P. Fuzzy search by file name.
" Must have.
Plugin 'kien/ctrlp.vim'

" Automatically change directory to project root
Plugin 'airblade/vim-rooter'

" Syntax highlight
Plugin 'sheerun/vim-polyglot'

" Code comments
Plugin 'tpope/vim-commentary'

"c/c++ stuff here
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/syntastic'
" Track the engine.
"Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'Rip-Rip/clang_complete'
Plugin 'rhysd/vim-clang-format'
Plugin 'mileszs/ack.vim'







"Plugin 'lifepillar/vim-mucomplete'
" Plugin 'ntpeters/vim-better-whitespace'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

"Shader syntax support
Plugin 'tikhomirov/vim-glsl'

" ColorScheme {{{
" ---------------------------------------------------------------------------------------------------
Plugin 'nanotech/jellybeans.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'vim-scripts/twilight'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-scripts/Wombat'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/rdark'
Plugin 'itchyny/landscape.vim'
Plugin 'altercation/vim-colors-solarized'
" colorschemes
" Plugin 'xolox/vim-colorscheme-switcher'
" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'
" }}}
"
"
"
" in your .vimrc (_vimrc for Windows)
"autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl


" Quick PluginStall
"nnoremap <Leader>pi :source ~/.vimrc<cr>:PluginInstall<cr>
nnoremap <Leader>pi :source $HOME/$MYVIMRC<cr>:PluginInstall<cr>



" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_solarized_bg = 'dark'
let g:airline_powerline_fonts = 1



"source $HOME/$VIMFILEiS/plugins/settings_programming.vim
"source $HOME/$VIMFILEiS/plugins/settings_ctrlp.vim
"source $HOME/$VIMFILEiS/plugins/settings_fzf.vim
"source $HOME/$VIMFILEiS/plugins/settings_ycm.vim


"source $HOME/$VIMFILEiS/plugins/fzf-setting.vim


