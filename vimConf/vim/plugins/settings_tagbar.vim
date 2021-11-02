" tagbar
let tagbar_right=1
let tagbar_width=32
let g:tagbar_compact=1


if !exists('g:tagbar_iconchars')
    if has('multi_byte') && has('unix') && &encoding == 'utf-8' &&
     \ (empty(&termencoding) || &termencoding == 'utf-8')
        let g:tagbar_iconchars = ['▶', '▼']
    else
        let g:tagbar_iconchars = ['+', '-']
    endif
endif

let g:tagbar_type_cpp = {
            \ 'kinds' : [
                \ 'd:macros:1:0',
                \ 'g:enums:1:0',
                \ 'e:enumerators:1:0',
                \ 't:typedefs:1:0',
                \ 's:structs:1:0',
                \ 'u:unions:1:0',
                \ 'v:variables:1:0',
                \ 'm:members:0:0',
                \ 'p:prototypes',
                \ 'f:functions',
                \ 'n:namespaces',
                \ 'c:classes',
                \ ],
                \ }

let g:tagbar_type_c = {
            \ 'kinds' : [
                \ 'd:macros:1:0',
                \ 'g:enums:1:0',
                \ 'e:enumerators:1:0',
                \ 't:typedefs:1:0',
                \ 's:structs:1:0',
                \ 'u:unions:1:0',
                \ 'v:variables:1:0',
                \ 'm:members:0:0',
                \ 'p:prototypes',
                \ 'f:functions',
                \ ],
                \ }

let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
     \ }


" let g:tagbar_type_c = {
"     \ 'kinds' : [
"          \ 'c:classes:0:1',
"          \ 'd:macros:0:1',
"          \ 'e:enumerators:0:0',
"          \ 'f:functions:0:1',
"          \ 'g:enumeration:0:1',
"          \ 'l:local:0:1',
"          \ 'm:members:0:1',
"          \ 'n:namespaces:0:1',
"          \ 'p:functions_prototypes:0:1',
"          \ 's:structs:0:1',
"          \ 't:typedefs:0:1',
"          \ 'u:unions:0:1',
"          \ 'v:global:0:1',
"          \ 'x:external:0:1'
"      \ ],
"      \ 'sro'        : '::',
"      \ 'kind2scope' : {
"          \ 'g' : 'enum',
"          \ 'n' : 'namespace',
"          \ 'c' : 'class',
"          \ 's' : 'struct',
"          \ 'u' : 'union'
"      \ },
"      \ 'scope2kind' : {
"          \ 'enum'      : 'g',
"          \ 'namespace' : 'n',
"          \ 'class'     : 'c',
"          \ 'struct'    : 's',
"          \ 'union'     : 'u'
"      \ }
" \ }
" let g:tagbar_type_cpp = {
"     \ 'kinds' : [
"          \ 'c:classes:0:1',
"          \ 'd:macros:0:1',
"          \ 'e:enumerators:0:0',
"          \ 'f:functions:0:1',
"          \ 'g:enumeration:0:1',
"          \ 'l:local:0:1',
"          \ 'm:members:0:1',
"          \ 'n:namespaces:0:1',
"          \ 'p:functions_prototypes:0:1',
"          \ 's:structs:0:1',
"          \ 't:typedefs:0:1',
"          \ 'u:unions:0:1',
"          \ 'v:global:0:1',
"          \ 'x:external:0:1'
"      \ ],
"      \ 'sro'        : '::',
"      \ 'kind2scope' : {
"          \ 'g' : 'enum',
"          \ 'n' : 'namespace',
"          \ 'c' : 'class',
"          \ 's' : 'struct',
"          \ 'u' : 'union'
"      \ },
"      \ 'scope2kind' : {
"          \ 'enum'      : 'g',
"          \ 'namespace' : 'n',
"          \ 'class'     : 'c',
"          \ 'struct'    : 's',
"          \ 'union'     : 'u'
"      \ }
" \ }

" Sort by file order
"let g:tagbar_sort = 0
nmap <F2> :TagbarToggle<CR>
