
"https://github.com/4Bruno/LessonsLearned/blob/a9443b9a3613f8491d802a580d19e721e10c6ce1/vim/.vimrc
if g:is_win
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
