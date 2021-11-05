let g:snips_author = 'F. Wheezy'
let g:UltiSnipsExpandTrigger = "<C-e>"
let g:UltiSnipsEditSplit = "vertical"
let g:UltiSnipsListSnippets = "<C-x>"
let g:ultisnips_python_style = "google"
let g:ultisnips_python_quoting_style = "single"
let g:ultisnips_python_triple_quoting_style = "double"
let g:UltiSnipsJumpBackwardTrigger = "<Left>"
let g:UltiSnipsJumpForwardTrigger = "<Right>"
let g:UltiSnipsSnippetDirectories=['$HOME/$VIMFILE_DIR/snippets']
let g:UltiSnipsSnippetsDir = '$HOME/$VIMFILE_DIR/snippets'



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

