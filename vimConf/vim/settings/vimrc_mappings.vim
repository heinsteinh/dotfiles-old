" Cursor Navigation {{{
" this is visual, select, normal and operator-pending modes
noremap H 0
noremap L $

" open today's daily in a split
nnoremap <leader>di :call GoToDaily()<cr>

" Copy and Paste {{{
" yank to system clipboard
xnoremap <leader>c "+y
nnoremap <leader>c "+y

" paste from system clipboard
nnoremap <leader>v "+p

"Better copy paste
vnoremap y <Nop>
vnoremap xx y
vnoremap xa "ay
vnoremap xb "by
vnoremap xc "+y
nmap x y
nnoremap yx yy
nnoremap ya "aY
nnoremap yb "bY
nnoremap yc "+Y
nnoremap pp p
nnoremap p <Nop>
nnoremap PP P
nnoremap pa "ap
nnoremap Pa "aP
nnoremap pb "bp
nnoremap Pb "bP
nnoremap pc "+p
nnoremap Pc "+P
nnoremap pd "1p
nnoremap Pd "1P
nnoremap px "0p
nnoremap Px "0P

"}}}


"{{{ More sensible cw dw and yw
nnoremap cw ciw
nnoremap cW ciW
nnoremap dw daw
nnoremap dW daW
nnoremap yw yiw
nnoremap yW yiW
nmap ce cia
nmap de daa
"}}}


"{{{Fold shorcuts
nnoremap <space> za
nnoremap zo zr
nnoremap zO zR
nnoremap zc zm
nnoremap zC zM
"}}}


"{{{faster indent
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv
"}}}
"
"
"{{{
nmap <leader>c :Commentary<CR>
vmap <leader>c :Commentary<CR>
"}}}"
"
"
"

" Faster command mode access
"nnoremap <Space> :
"nnoremap ; :


" Git {{{ <leader>g-
" vim-fugitive commands
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gs :Git<cr>
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gd :Gvdiff<cr>
nnoremap <leader>gps :Gpush<cr>
nnoremap <leader>gpl :Gpull<cr>
" }}}


" Tabs and Windows  {{{
nnoremap <leader>w <c-w>
nnoremap <leader>ww <c-w>c<c-w>
nnoremap <leader>tj :tabprevious<cr>
nnoremap <leader>tk :tabnext<cr>
nnoremap <leader>tJ :tabfirst<cr>
nnoremap <leader>tK :tablast<cr>
nnoremap <leader>tc :tabnew<cr>
nnoremap <leader>tn :call OpenBufferInNewTab()<cr>
" }}}



" open vimrc
"nnoremap <leader>ev :vsplit $DOTFILES/vim/vimrc<cr>
" open zshrc
"nnoremap <leader>ez :vsplit $DOTFILES/zsh/zshrc<cr>
" open this mapping file
"nnoremap <leader>em :vsplit $DOTFILES/vim/helpers/mappings.vim<cr>
" open zsh aliases
"nnoremap <leader>ea :vsplit $DOTFILES/zsh/aliases.zsh<cr>
" open tmux.config
"nnoremap <leader>et :vsplit $DOTFILES/tmux/tmux.conf<cr>
