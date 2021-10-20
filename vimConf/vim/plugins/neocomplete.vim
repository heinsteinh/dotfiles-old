" Neocomplete {
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#enable_auto_select = 0
let g:neocomplete#enable_fuzzy_completion = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#max_list = 10
let g:neocomplete#use_vimproc = 1
let g:neocomplete_enable_camel_case_completion = 0
let g:neocomplete_enable_fuzzy_completion_start_length = 2

" Fix the omnicompletion for NeoComplete with force.
if !exists('g:neocomplcache_force_omni_patterns')
    let g:neocomplcache_force_omni_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.php= '\k\.\k*'
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
"let g:neocomplete#sources#vim#complete_functions = {
"            \     'Unite': 'unite#complete_source',
"            \     'VimShell': 'vimshell#complete',
"            \     'VimFiler': 'vimfiler#complete',
"            \ }
"
call neocomplete#custom#source('ultisnips', 'rank', 500)
" Plugin key-mappings {
function! CleverCr()
    if pumvisible()
        if neosnippet#expandable()
            let exp = "\<Plug>(neosnippet_expand)"
            return exp . neocomplete#close_popup()
        else
            return neocomplete#close_popup()
        endif
    else
        return "\<CR>"
    endif
endfunction
"<CR> close popup and save indent or expand snippet.
imap <expr> <CR> CleverCr()
"<C-h>, <BS>: " close popup and delete backword char.
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"<TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" }
" Use honza's snippets.
let g:neosnippet#snippets_directory='~/.vim/neosnippets'
"Enable neosnippet snipmate compatibility mode
let g:neosnippet#enable_snipmate_compatibility = 1
" Disable the neosnippet preview candidate window. Or it will ruin your overview, especially when splits are used. 
set completeopt-=preview
" }
