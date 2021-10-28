if has ('autocmd') " Remain compatible with earlier versaons


    
    " automatically rebalance windows on vim resize
    "autocmd VimResized * :wincmd =

    " zoom a vim pane, <C-w>= to re-balance
    nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
    nnoremap <leader>= :wincmd =<cr>

    " Preserve last editing position in vim
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    " Vim interprets .md as 'modula2' otherwise, see :set filetype?
    autocmd Bufread,BufNewFile *.md set filetype=markdown

    "autocmd bufreadpre *.mkd setlocal textwidth=0
    autocmd bufreadpre *.md setlocal textwidth=0

    "This makes Vim break text to avoid lines getting longer than 78 characters.
    autocmd FileType text setlocal textwidth=78



    "Changing number base on the mode we are in
    augroup toggle_relative_number
        autocmd InsertEnter * :setlocal relativenumber " norelativenumber
        autocmd InsertLeave * :setlocal norelativenumber " relativenumber
    augroup END

    augroup CursorLineOnlyInActiveWindow
        autocmd!
        autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        autocmd WinLeave * setlocal nocursorline
    augroup END

    " Vim jumps to last position when reopening a file
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    au BufEnter * silent! lcd %:p:h

    " auto reload vimrc when editing it
    "autocmd! bufwritepost .vimrc source ~/.vimrc

    "Autoclose NERDTree if it's the only open window left.
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

    " Close the tab if NERDTree is the only window remaining in it.
    autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

    " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
    autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
                \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif


    " Cursor at position of last saved line when opening file
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif

    " Close all folds when opening a new buffer
    "autocmd BufRead * setlocal foldmethod=marker

"     " Enable marker folds for .vimrc files and shell files
"     autocmd FileType vim,sh setlocal foldmethod=marker
"     autocmd BufRead * normal zM

    " Start NERDTree and put the cursor back in the other window.
    "autocmd VimEnter * NERDTree | wincmd p
    "autocmd VimEnter * exe "vertical resize 60"
    "
    "autocmd! BufNewFile,BufRead *{.vs,.vert,.vsh},*{.fs,.frag,.fsh} set ft=glsl

    augroup cpp_augroup
        autocmd!
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <F5> :setlocal makeprg=cmake\ --build\ D:/dev/proj/SoundReader/build\ --config\ Debug\ --\ /property:GenerateFullPaths=true\ /m<CR>:Make<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <F6> :Dispatch "D:/dev/proj/SoundReader/bin/Debug/SoundReader.exe"<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <S-Space> :YcmCompleter GetType<CR>
        autocmd BufEnter *{.cpp,.h} source $HOME/$VIMFILE_DIR/language/cpp.vim
        autocmd BufEnter *{.c,.h}   source $HOME/$VIMFILE_DIR/language/c.vim
        " " Cpp ctor stub by highlighting the member vars
        " autocmd BufNewFile,BufRead *{.cpp,.h} command! -range Ctor :call <SID>pythonSelectedTextPasteAbove("cpp.ctor_stub")<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} command! -range Opeq :call <SID>pythonSelectedTextPasteAbove("cpp.stub_opeq")<CR>
    augroup END

   "Colors for my shader files
	autocmd! BufNewFile,BufRead *{.vert,.vsh,.vs,.frag,.fsh,.fs} set ft=glsl


    if has("gui_running")
    "    autocmd GUIEnter * set vb t_vb=
    "    autocmd GUIEnter * simalt ~x
    end

    augroup vimrc     " Source vim configuration upon save
        autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
        autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
    augroup END


endif " has autocmd
"}}}


