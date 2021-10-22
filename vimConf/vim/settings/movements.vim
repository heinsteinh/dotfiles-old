"remap jk/kj to escape
inoremap jk <Esc>
inoremap kj <Esc>


" remap movement keys so that up-down work over visual lines rather than
" actual lines
noremap j gj
noremap k gk


" Get off my lawn
"nnoremap <Left>  :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up>    :echoe "Use k"<CR>
"nnoremap <Down>  :echoe "Use j"<CR>

"remap window movement keys to match up with above, using <C-direction> to
"change between windows : Split window navigation
nnoremap <C-h> <C-w><Left>
nnoremap <C-j> <C-w><Down>
nnoremap <C-k> <C-w><Up>
nnoremap <C-l> <C-w><Right>

" Never save and quit on accident
nnoremap ZZ zz


" Open directory of current file
nmap <leader>d :e %:h<cr>
" ... or make it
nmap <leader>D :!mkdir -p %:h<cr>

" " Easier window management
" map <c-h> <c-w>h
" map <c-l> <c-w>l
" map <c-j> <c-w>j
" map <c-k> <c-w>k
map <c-Down>  <c-w>-
map <c-Right> <c-w>>
map <c-Up>    <c-w>+
map <c-Left>  <c-w><


"Split window resize
nnoremap <leader>j :resize +5<CR>
nnoremap <leader>k :resize -5<CR>
nnoremap <leader>h :vertical resize +5<CR>
nnoremap <leader>l :vertical resize -5<CR>


nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>

"close buffer and close de file behind
nnoremap <leader>bc :bd<CR>
nnoremap <leader>be :BufExplorer<CR>
nnoremap <leader>bt :ToggleBufExplorer<CR>



" Double tap s to save the buffer contents, more convienent than keep the pressure on the modifier keys to be CUA compatible.
nnoremap <silent> ss :update<CR>



map <F11> <Esc>:call libcallnr("gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR>
"
" File Handling
"""""""""""""""

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>fe    :e      <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>fs    :split  <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>fv    :vsplit <C-R>=expand("%:p:h") . '/'<CR>

" Rename current file (thanks Gary Bernhardt)
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

nmap <C-F2> :call ToggleWhitespace()<CR>

" Formatting
""""""""""""

" Reindent file and return to current line
map <leader>i mmgg=G`m<cr>
" Rehash with 1.9 style hash syntax
nmap <leader>rh :%s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>
