let mapleader = ","
let maplocalleader =","

nmap <Leader>bi :source ~/.vimrc<cr>:PlugInstall<cr>

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
nnoremap <leader>ev :vsplit $DOTFILES/vim/vimrc<cr>
" open zshrc
nnoremap <leader>ez :vsplit $DOTFILES/zsh/zshrc<cr>
" open this mapping file
nnoremap <leader>em :vsplit $DOTFILES/vim/helpers/mappings.vim<cr>
" open zsh aliases
nnoremap <leader>ea :vsplit $DOTFILES/zsh/aliases.zsh<cr>
" open tmux.config
nnoremap <leader>et :vsplit $DOTFILES/tmux/tmux.conf<cr>
