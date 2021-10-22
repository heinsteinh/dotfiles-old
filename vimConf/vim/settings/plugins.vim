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


Plugin 'mileszs/ack.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'

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
Plugin 'adah1972/ycmconf'   "https://github.com/adah1972/ycmc

if hostname() == "BHI4PCH7D3"
else
end

Plugin 'jiangmiao/auto-pairs'
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
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-scripts/a.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/screen'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'Rip-Rip/clang_complete'
Plugin 'rhysd/vim-clang-format'


" Track the engine.
"Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'


"Autocomplete package
" Plugin 'prabirshrestha/async.vim'
" Plugin 'prabirshrestha/vim-lsp'
" Plugin 'prabirshrestha/asyncomplete.vim'
" Plugin 'prabirshrestha/asyncomplete-lsp.vim'
" Plugin 'prabirshrestha/asyncomplete-file.vim'


"Plugin 'lifepillar/vim-mucomplete'
Plugin 'ntpeters/vim-better-whitespace'

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
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
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
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"


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



source $HOME/.vim/plugins/fzf-setting.vim


""https://github.com/junegunn/fzf.vim
"let g:fzf_preview_window = ['right:50%', 'ctrl-/']
"" let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
"" let g:fzf_preview_window = []


"" [Buffers] Jump to the existing window if possible
"let g:fzf_buffers_jump = 1
"" [[B]Commits] Customize the options used by 'git log':
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
"" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'
"" [Commands] --expect expression for directly executing the command
"let g:fzf_commands_expect = 'alt-enter,ctrl-x'
""nnoremap <C-p> :GFiles<CR>

"nnoremap <leader>>gg :GFiles<CR


"" This is the default extra key bindings
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-x': 'split',
"  \ 'ctrl-v': 'vsplit' }

"" Enable per-command history.
"" CTRL-N and CTRL-P will be automatically bound to next-history and
"" previous-history instead of down and up. If you don't like the change,
"" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
"let g:fzf_history_dir = '~/.local/share/fzf-history'

"nnoremap <leader>ff :Files<CR>
"nnoremap <leader>gg :GFiles<CR>
"nnoremap <leader>bb :Buffers<CR>
"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>t :Tags<CR>
"nnoremap <leader>m :Marks<CR>



"let g:fzf_tags_command = 'ctags -R'
"" Border color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"

"" Customize fzf colors to match your color scheme
"let g:fzf_colors =
            "\ { 'fg':      ['fg', 'Normal'],
"  \ 'bg':      ['bg', 'Normal'],
"  \ 'hl':      ['fg', 'Comment'],
"  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"  \ 'hl+':     ['fg', 'Statement'],
"  \ 'info':    ['fg', 'PreProc'],
"  \ 'border':  ['fg', 'Ignore'],
"  \ 'prompt':  ['fg', 'Conditional'],
"  \ 'pointer': ['fg', 'Exception'],
"  \ 'marker':  ['fg', 'Keyword'],
"  \ 'spinner': ['fg', 'Label'],
"  \ 'header':  ['fg', 'Comment'] }

""Get Files
"command! -bang -nargs=? -complete=dir Files
"    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


"" Get text in files with Rg
"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"  \   fzf#vim#with_preview(), <bang>0)

"" Ripgrep advanced
"function! RipgrepFzf(query, fullscreen)
"  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"  let initial_command = printf(command_fmt, shellescape(a:query))
"  let reload_command = printf(command_fmt, '{q}')
"  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction

"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

"" Git grep
"command! -bang -nargs=* GGrep
"  \ call fzf#vim#grep(
"  \   'git grep --line-number '.shellescape(<q-args>), 0,
"  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
