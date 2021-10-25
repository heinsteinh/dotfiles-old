" nerdtree icons conf
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
"let g:tagbar_autopreview = 1

let NERDTreeShowBookmarks=1

let NERDTreeIgnore=['\.pyc','\~$','\.swp', '\.DS_Store', "\idea", '\.temp', '\.git']



"{{{
" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
let NERDTreeShowBookmarks = 1   " Display bookmarks on startup.

" Basically disable nerdtree markers
"let NERDTreeDirArrowExpandable=">"
"let NERDTreeDirArrowCollapsible="v"

map <leader>ne :NERDTreeFind<cr>
map <C-o> :NERDTreeToggle %<CR>

" don;t show these file types
"let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" Enable folder icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" Fix directory colors
"highlight! link NERDTreeFlags NERDTreeDir

" Remove expandable arrow
"let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
"let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
"let NERDTreeDirArrowExpandable = "\u00a0"
"let NERDTreeDirArrowCollapsible = "\u00a0"
"let NERDTreeNodeDelimiter = "\x07"

"" Autorefresh on tree focus
"function! NERDTreeRefresh()
"    if &filetype == "nerdtree"
"        silent exe substitute(mapcheck("R"), "<CR>", "", "")
"    endif
"endfunction

"autocmd BufEnter * call NERDTreeRefresh()
"}}}
