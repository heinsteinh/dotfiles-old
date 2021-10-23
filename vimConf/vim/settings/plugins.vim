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
Plugin 'valloric/youcompleteme'
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
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

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
nnoremap <Leader>pi :source ~/.vimrc<cr>:PluginInstall<cr>

"https://github.com/4Bruno/LessonsLearned/blob/a9443b9a3613f8491d802a580d19e721e10c6ce1/vim/.vimrc
if(g:iswindows==1)
    " 15.d Clang Complete -->
    let g:clang_library_path='C:\Program Files\LLVM\bin\libclang.dll'
    let g:clang_user_options = '-target=x86_64-w64-windows-gnu'
    let g:clang_complete_auto = 1

    if hostname() == "BHI4PCH7D3"
        let g:clang_library_path='C:\Program Files (x86)\Microsoft Visual Studio\2019\Professional\VC\Tools\Llvm\x64\bin'
    else
        let g:clang_library_path='C:\Program Files\LLVM\bin\libclang.dll'
    endif
else

    " clang_complete configuration
    let g:clang_library_path='/usr/lib/llvm-3.8/lib'
endif


" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1
" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1
" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1
" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

" tagbar configuration
"autocmd VimEnter * nested TagbarOpen
map <F7> :TagbarToggle<CR>
let g:tagbar_width = 50
let g:tagbar_sort = 0
let g:tagbar_compact = 0
let g:tagbar_indent = 2
let g:tagbar_autofocus = 0
let g:tagbar_autoclose = 0
let g:tagbar_usearrows = 1
let g:tagbar_autoshowtag = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnip
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" Trigger configuration. Do not use <tab> if you use YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-t>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_solarized_bg = 'dark'
let g:airline_powerline_fonts = 1




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ---------- Ctrl-P stuff --------------
"  Put ctrl p at the bottom ordererf from top to bottom
let g:ctrlp_match_window='bottom,order:ttb,min:1,max:20,results:20'
" use rg as our ctrlp finder
"let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden -g ""'
" rg is fast enough we don't need no stinking cache
let g:ctrlp_use_caching=0
let g:ctrlp_map = '<c-l'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn)$',
            \ 'file': '\v\.(exe|so|dll)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
"Use a custom file listing command:
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows
"Ignore files in .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


if executable('rg')
    set grepprg=rg\ --color=never
    let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
    "let g:ctrlp_use_caching = 0

    let g:ctrlp_use_caching = 1
    let g:ctrlp_clear_cache_on_exit = 0
    let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_switch_buffer = 'et'
    let g:ackprg = 'rg --vimgrep --no-heading'
else
    let g:ctrlp_clear_cache_on_exit = 0
endif

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'


" Mapping to close the completion menu (default <C-y>)
let g:ycm_key_list_stop_completion = ['<C-x>']

" Set filetypes where YCM will be turned on
let g:ycm_filetype_whitelist = { 'cpp':1, 'h':2, 'hpp':3, 'c':4, 'cxx':5 }

" Close preview window after completing the insertion
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


let g:ycm_confirm_extra_conf = 0                 " Don't confirm python conf
let g:ycm_always_populate_location_list = 1      " Always populae diagnostics list
let g:ycm_enable_diagnostic_signs = 1            " Enable line highligting diagnostics
let g:ycm_open_loclist_on_ycm_diags = 1          " Open location list to view diagnostics

let g:ycm_max_num_candidates = 20                " Max number of completion suggestions 
let g:ycm_max_num_identifier_candidates = 10     " Max number of identifier-based suggestions
let g:ycm_auto_trigger = 1                       " Enable completion menu
let g:ycm_show_diagnostic_ui = 1                 " Show diagnostic display features
let g:ycm_error_symbol = '>>'                    " The error symbol in Vim gutter
let g:ycm_enable_diagnostic_signs = 1            " Display icons in Vim's gutter, error, warnings
let g:ycm_enable_diagnostic_highlighting = 1     " Highlight regions of diagnostic text
let g:ycm_echo_current_diagnostic = 1            " Echo line's diagnostic that cursor is on

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

source $HOME/.vim/plugins/fzf-setting.vim

