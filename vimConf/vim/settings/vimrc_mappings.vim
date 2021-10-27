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



nnoremap <C-Insert> "*y
nnoremap <S-Insert> "*p
vnoremap <C-Insert> "*y
vnoremap <S-Insert> "*p



" go automatically to the end of the text after yanking/pasting
vnoremap <silent> y y`]
vmap <silent> p p`]
nmap <silent> p p`]
vmap <silent> P P`]
nmap <silent> P P`]

"}}}

" Automatically jump to end of text thats pasted/yanked, feels inuitively.
"noremap <silent> y y`]
"noremap <silent> p p`]


"{{{  Terminal Mode Mappings
tnoremap <Esc> <C-w>N
"tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"

"}}}

"{{{Fold shorcuts
nnoremap <space> za
nnoremap zo zr
nnoremap zO zR
nnoremap zc zm
nnoremap zC zM


" create fold (visual select)
vnoremap <space> zf

" close other folds
nnoremap zo zMzv


hi Folded guibg=bg
hi Folded guifg='orange'
"}}}


"{{{faster indent
nnoremap > >>
nnoremap < <<
vnoremap < <gv
vnoremap > >gv
"}}}
"
"
"{{{ Comment text
nmap <leader>cc :Commentary<CR>
vmap <leader>cc :Commentary<CR>
"}}}"

" Visual mode "{{{


" select just-pasted text
noremap gV `[v`]

" search for what's visually selected by pressing `//`
vnoremap // y/<C-R>"<CR>

" duplicate visual mode selection
vnoremap D y'>p


" Press Shift+P while in visual mode to replace the selection without
" overwriting the default register
vnoremap P p:call setreg('+', getreg('0'))<CR>
"}}}

" Editing "{{{

"Experiment C-U instead of Resizing windows
" Bubble single lines
nnoremap <silent> <C-Up>   :move-2<CR>==
nnoremap <silent> <C-Down> :move+<CR>==
" Bubble multiple lines
xnoremap <silent> <C-Up>   :move-2<CR>gv=gv
xnoremap <silent> <C-Down> :move'>+<CR>gv=gv

"Duplicate lines above and below
inoremap <C-A-down> <esc>Ypk
nnoremap <C-A-down> Ypk
xnoremap <C-A-down> y`>pgv
inoremap <C-A-up> <esc>YPj
nnoremap <C-A-up> YPj
xnoremap <C-A-up> y`<Pgv


" make Y behave like D, C, ...
nnoremap Y y$
"}}}




" rewire n and N to highlight the current match
"nnoremap <silent> n nzv:call functions#HighlightNext(0.2)<CR>
"nnoremap <silent> N Nzv:call functions#HighlightNext(0.2)<CR>

" Faster command mode access
"nnoremap <Space> :
"nnoremap ; :

"fzf {{{
if executable('rg')
" Search for word under cursor with RipGrep
nnoremap <leader>g :<C-U>execute "Rg ".expand('<cword>') \| cw<CR>
else

endif

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
"nnoremap <leader>w <c-w>
"nnoremap <leader>ww <c-w>c<c-w>
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
