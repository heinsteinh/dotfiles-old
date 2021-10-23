" Cursor Navigation {{{
" this is visual, select, normal and operator-pending modes
noremap H 0
noremap L $

" highlight last inserted text
nnoremap gV `[v`]

" open today's daily in a split
nnoremap <leader>di :call GoToDaily()<cr>

" Copy and Paste {{{
" yank to system clipboard
xnoremap <leader>c "+y
nnoremap <leader>c "+y
" paste from system clipboard and go end of the paste
nnoremap <leader>v "+p`]



"Better copy paste

nnoremap ay "+y
vnoremap ay "+y
nnoremap aY "+Y
vnoremap aY "+Y
nnoremap ayy "+yy
vnoremap ayy "+yy
nnoremap ap "+p
nnoremap ad "+d
vnoremap ad "+d
nnoremap add "+dd
vnoremap add "+dd


"}}}

" Automatically jump to end of text thats pasted/yanked, feels inuitively.
"noremap <silent> y y`]
"noremap <silent> p p`]



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
nmap <leader>cc :Commentary<CR>
vmap <leader>cc :Commentary<CR>
"}}}"
"
"
"

" Faster command mode access
"nnoremap <Space> :
"nnoremap ; :

"fzf {{{
if executable('rg')
" Search for word under cursor with RipGrep
nnoremap <leader>g :<C-U>execute "Rg ".expand('<cword>') \| cw<CR>
else

endi

"}}}


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
