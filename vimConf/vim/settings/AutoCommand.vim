if has ('autocmd') " Remain compatible with earlier versaons

    " Filetype augroup {{{
    augroup FTGroup
        au!
        "This makes Vim break text to avoid lines getting longer than 78 characters.
        autocmd FileType text setlocal textwidth=78

        "enable rainbow it globally
        au FileType c,cpp,objc,objcpp call rainbow#load()
        "let g:rainbow_active = 1

        autocmd FileType sh set foldmethod=indent
        autocmd FileType c,cpp set foldmethod=syntax
        " " Enable marker folds for .vimrc files and shell files
        autocmd FileType vim,sh setlocal foldmethod=marker
        "autocmd BufRead * normal zM

        autocmd filetype gitcommit setlocal spell spelllang=en_us

        " Easier closing of vim help menus.
        "augroup helpft
        ""    au!
        autocmd FileType help noremap <buffer> q :q<CR>
        "augroup end

        " Easier closing of bufferized commands.
        " augroup bufferizeft
        "     au!
        autocmd FileType bufferize noremap <buffer> q :q<CR>
        "augroup end
    augroup END
    " }}}

    " Buffer augroup {{{
    augroup BufGroup
        au!

        " Vim interprets .md as 'modula2' otherwise, see :set filetype?
        autocmd Bufread,BufNewFile *.md set filetype=markdown

        autocmd bufreadpre *.mkd setlocal textwidth=0
        autocmd bufreadpre *.md setlocal textwidth=0

        " Change the directory of vim to current working directory
        "augroup General
        autocmd BufEnter * if &modifiable | lcd %:p:h | endif
        "augroup END

        "Vim jumps to last position when reopening a file
        au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

        "auto reload vimrc when editing it
        "autocmd! bufwritepost .vimrc source ~/.vimrc

        "Autoclose NERDTree if it's the only open window left.
        autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

        "Close the tab if NERDTree is the only window remaining in it.
        autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

        "If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
        autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
                    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

        " Close all folds when opening a new buffer
        "autocmd BufRead * setlocal foldmethod=marker

        "     " Enable marker folds for .vimrc files and shell files
        "     autocmd FileType vim,sh setlocal foldmethod=marker
        "     autocmd BufRead * normal zM

        " Start NERDTree and put the cursor back in the other window.
        "autocmd VimEnter * NERDTree | wincmd p
        "autocmd VimEnter * exe "vertical resize 60"

        "Colors for my shader files
        autocmd! BufNewFile,BufRead *{.vert,.vsh,.vs,.frag,.fsh,.fs} set ft=glsl


    augroup END
    " }}}

    " Misc augroup {{{
    augroup MiscGroup
        au!

        " Let the cmd line breath when it has space.
        au VimResized * let &cmdheight=1 + float2nr(ceil(&lines / 64.0))

        "{{{ Reset cursor on exit
        autocmd VimLeave * set guicursor=a:hor25
        "}}}
    augroup END
    " }}}

    "automatically rebalance windows on vim resize
    "autocmd VimResized * :wincmd =

    " zoom a vim pane, <C-w>= to re-balance
    "nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
    "nnoremap <leader>= :wincmd =<cr>


    "Changing number base on the mode we are in
    augroup toggle_relative_number
        autocmd InsertEnter * :setlocal  norelativenumber
        autocmd InsertLeave * :setlocal  relativenumber
    augroup END

    augroup CursorLineOnlyInActiveWindow
        autocmd!
        autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        autocmd WinLeave * setlocal nocursorline
    augroup END



    " " Let the cmd line breath when it has space.
    " augroup ResizeCmdline
    "     au!
    "     au VimResized * let &cmdheight=1 + float2nr(ceil(&lines / 64.0))
    " augroup end


    augroup cpp_augroup
        autocmd!
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <F5> :setlocal makeprg=cmake\ --build\ D:/dev/proj/SoundReader/build\ --config\ Debug\ --\ /property:GenerateFullPaths=true\ /m<CR>:Make<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <F6> :Dispatch "D:/dev/proj/SoundReader/bin/Debug/SoundReader.exe"<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} nnoremap <buffer> <S-Space> :YcmCompleter GetType<CR>
        autocmd BufEnter *{.cpp,.h} source $HOME/$VIMFILE_DIR/syntax/cpp.vim
        autocmd BufEnter *{.c,.h}   source $HOME/$VIMFILE_DIR/syntax/c.vim
        " " Cpp ctor stub by highlighting the member vars
        " autocmd BufNewFile,BufRead *{.cpp,.h} command! -range Ctor :call <SID>pythonSelectedTextPasteAbove("cpp.ctor_stub")<CR>
        " autocmd BufNewFile,BufRead *{.cpp,.h} command! -range Opeq :call <SID>pythonSelectedTextPasteAbove("cpp.stub_opeq")<CR>
    augroup END


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


