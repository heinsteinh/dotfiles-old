
" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"


" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" Move selected line / block of text in visual mode
" shift + k to move up
" shift + j to move down
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


"Splittings windows
nnoremap <C-S-k> :abo split <cr>
nnoremap <C-S-h> :abo vsplit <cr>
nnoremap <C-S-j> :rightbelow split <cr>
nnoremap <C-S-l> :rightbelow vsplit <cr>

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <A-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>


" let &t_ti.="\e[1 q"
" let &t_SI.="\e[5 q"
" let &t_EI.="\e[1 q"
" let &t_te.="\e[0 q"


"nnoremap <silent> <leader>b :buffers<CR>:b<Space>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>

"Switch from header to cpp in C++ Programming
nnoremap <silent> <leader>hs <C-h>:q<CR>:call SwitchSourceHeader()<CR>
nnoremap <silent> <leader>ls <C-l>:q<CR>:call SwitchSourceHeader()<CR>
function! SwitchSourceHeader()
  "update!
  if (expand ("%:e") == "cc")
    find %:r.h
  else
    find %:r.cc
  endif
endfunction
autocmd filetype cpp nmap <buffer> <silent> <leader>s :call SwitchSourceHeader()<CR>

"function! MySetPath()
"  exe 'set path=' . matchstr(expand('%:h'), '\C\zs.\{-}dev/./src\ze') . ',,.,/usr/include'
"endfunction
"autocmd BufRead,BufEnter,BufFilePost,BufWinEnter **/dev/?/src/** call MySetPath()
"nmap <silent> <leader>P :call MySetPath()<CR>

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal spell


let g:fzf_nvim_statusline = 0
let g:fzf_layout = {'down': '~20%'}
if has("win32")
  let g:fzf_history_dir = 'c:/fzf-history'
endif
