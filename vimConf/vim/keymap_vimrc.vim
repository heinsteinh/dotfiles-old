
"{{{ Copy/Paste
""https://github.com/jwbat/dotfiles/blob/4fc36a3eda20ed4467b21dd863507fa2c31b80d5/.vimrc#L131
"Good Register paste example in this link
"
" yank to system clipboard
xnoremap <leader>c "+y
nnoremap <leader>c "+y
" paste from system clipboard and go end of the paste
nnoremap <leader>v "+p`]
" cut line(s) into system clipboard
xnoremap <leader>x "+d

nnoremap <C-Insert> "*y
nnoremap <S-Insert> "*p
vnoremap <C-Insert> "*y
vnoremap <S-Insert> "*p

" Copy entire file to clipboard
nnoremap Y :%y+<cr>


""copy visual text into register u
""replace visual text with text from u
vnoremap <leader><leader>yu "uy
vnoremap <leader><leader>pu "uP
noremap <leader><leader>yu "uy
noremap <leader><leader>pu "uP

noremap <leader><leader>pa "aP
noremap <leader><leader>ya "ay

nnoremap <leader><leader>yv "vy
nnoremap <leader><leader>pv "vP
vnoremap <leader><leader>yv "uy
vnoremap <leader><leader>pv "uP
"}}}

" remap movement keys so that up-down work over visual lines rather than 
" actual lines
noremap j gj
noremap k gk

"remap jk/kj to escape
inoremap jk <Esc>
inoremap kj <Esc>


" quick scroll down/up
nnoremap J Lzz
vnoremap J Lzz
nnoremap K Hzz
vnoremap K Hzz


" Map 0 to first non-blank character
nnoremap 0 ^

" Move to the end of the line
nnoremap L $zL
vnoremap L $
nnoremap H 0zH
vnoremap H 0

""indent/unindent visual mode selection with tab/shift+tab
"vmap <tab> >gv
"vmap <s-tab> <gv

" Copy number of lines and paste below
nnoremap <leader>cp :<c-u>exe 'normal! y' . (v:count == 0 ? 1 : v:count) . 'j' . (v:count == 0 ? 1 : v:count) . 'jo<C-v><Esc>p'<cr>



" Windows mappings
nnoremap <c-w>v :vnew<cr>
nnoremap <c-w>s :new<cr>
nnoremap <c-w>e :enew<cr>

" Delete current buffer
nnoremap <silent> <leader>bd :bp <bar> bd #<cr>
" Close current buffer
nnoremap <silent> <leader>bc :close<cr>

" This creates a new line of '=' signs the same length of the line
nnoremap <leader>o yypVr=



" Map dp and dg with leader for diffput and diffget
nmap <leader>dp :diffput<cr>
nmap <leader>dg :diffget<cr>
nmap <leader>du :windo diffoff <bar> windo diffupdate<cr>
nmap <leader>dn :windo diffthis<cr>
nmap <leader>df :windo diffoff<cr>



" Backspace in normal mode
nnoremap <bs> d1<Left>
" CTRL-D to delete line
inoremap <C-D> <Esc>dd<Insert>
nnoremap <C-D> dd
" CTRL-Z to undo
inoremap <C-Z> <Esc>u<Insert>
nnoremap <C-Z> u
" CTRL-Y to redo
inoremap <C-Y> <Esc><C-R><Insert>
nnoremap <C-Y> <C-R>
" CTRL-S to save
inoremap <C-S> <Esc>:w<Enter><Insert>
nnoremap <C-S> :w<Enter>

" [COMMAND+INSERT+VISUAL] CTRL-S Save file
nnoremap <C-s> :w!<CR>
inoremap <C-s> <esc>:w!<CR>gi
vnoremap <C-s> <esc>:w!<CR>gv=gv

" [COMMAND] TAB go to next tab
"nnoremap <TAB> gt

" [COMMAND] SHIFT-TAB go to previous tab
nnoremap <S-TAB> gT

" [INSERT+VISUAL] SHIFT-TAB remove indent/tab
inoremap <S-TAB> <C-d>
vnoremap <S-TAB> <gv

" [COMMAND] CTRL-N new tab
nnoremap <C-n> :tabnew<CR>


""Should find another mapper for this w. mgt
nnoremap <c-Down>  <c-w>-
nnoremap <c-Right> <c-w><
nnoremap <c-Up>    <c-w>+
nnoremap <c-Left>  <c-w>>

"Split window resize
nnoremap <leader>j :resize +5<CR>
nnoremap <leader>k :resize -5<CR>
nnoremap <leader>h :vertical resize +5<CR>
nnoremap <leader>l :vertical resize -5<CR>


" Move Line Up and Dow in all Tree main Mode 
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv


" Map - to move a line down and _ a line up
nnoremap - "ldd$"lp
nnoremap _ "ldd2k"lp


" [EDIT+VISUAL+COMMAND] CTRL-K UP Split above
nnoremap <C-S-Up> :above split<CR>
inoremap <C-S-Up> <ESC>:above split<CR>gi
vnoremap <C-S-Up> <ESC>:above split<CR>gv=gv

" [EDIT+VISUAL+COMMAND] CTRL-K DOWN Split below
nnoremap <C-S-Down> :below split<CR>
inoremap <C-S-Down> <ESC>:below split<CR>gi
vnoremap <C-S-Down> <ESC>:below split<CR>gv=gv

" [EDIT+VISUAL+COMMAND] CTRL-K LEFT Split left
nnoremap <C-S-Left> :vsplit<CR>
inoremap <C-S-Left> <ESC>:vsplit<CR>gi
vnoremap <C-S-Left> <ESC>:vsplit<CR>gv=gv

" [EDIT+VISUAkL+COMMAND] CTRL-K RIGHT Split right
nnoremap <C-S-Right> :botright vsplit<CR>
inoremap <C-S-Right> <ESC>:botright vsplit<CR>gi
vnoremap <C-S-Right> <ESC>:botright vsplit<CR>gv=gv



" [EDIT+VISUAL+COMMAND] ALT-LEFT switch to left or next window
nnoremap <M-Right> :wincmd l<CR>
inoremap <M-Right> <ESC>:wincmd l<CR>gi
vnoremap <M-Right> <ESC>:wincmd l<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-RIGHT switch to right previous window
nnoremap <M-Left> :wincmd h<CR>
inoremap <M-Left> <ESC>:wincmd h<CR>gi
vnoremap <M-Left> <ESC>:wincmd h<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-UP switch to window above current
nnoremap <M-Up> :wincmd k<CR>
inoremap <M-Up> <ESC>:wincmd k<CR>gi
vnoremap <M-Up> <ESC>:wincmd k<CR>gv=gv

" [EDIT+VISUAL+COMMAND] ALT-DOWN switch to window below current
nnoremap <M-Down> :wincmd j<CR>
inoremap <M-Down> <ESC>:wincmd j<CR>gi
vnoremap <M-Down> <ESC>:wincmd j<CR>gv=g
"}}}


"Experiment 
"https://github.com/jabrouwer82/configurations/blob/ab816a9b08b394b7cd114a912d4e04c926b46345/.vimrc

" Switch windows
noremap <leader><Up> :wincmd k<CR>
noremap <leader><Down> :wincmd j<CR>
noremap <leader><Left> :wincmd h<CR>
noremap <leader><Right> :wincmd l<CR>

" Move windows.
noremap <leader>J :wincmd J<CR>
noremap <leader>K :wincmd K<CR>
noremap <leader>H :wincmd H<CR>
noremap <leader>L :wincmd L<CR>


"" Esc to enter terminal normal mode
"tnoremap <Esc> <C-\><C-n>

" Ctrl-Shift-V to paste.
" Terminal Mode
tnoremap <C-A-V> <C-W>"+
" Normal Mode.
nnoremap <C-A-V> p
" Insert Mode.
inoremap <C-A-V> <C-R><C-O>+
" Command Line Mode.
cnoremap <C-A-V> <C-R>+

" Center the cursor when jumping between search matches.
noremap n nzz
noremap N Nzzo

" Search mappings
nnoremap <silent> * :execute "normal! *N"<cr>
nnoremap <silent> # :execute "normal! #n"<cr>


" Search visually selected text with // or * or #
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>


" <leader>s will prepare a :s command for the current word/selection.
"vnoremap <leader>s y:%s/<C-r>"\C/<C-r>"/g
"nnoremap <leader>s :%s/<C-r><C-w>\C/<C-r><C-w>/g

" Search and Replace
nnoremap <Leader>s :.,$s?<C-r><C-w>?<C-r><C-w>?gc<Left><Left><Left>
vnoremap <leader>s "hy:.,$s?<C-r>h?<C-r>h?gc<left><left><left>

" Pressing enter will clear search highlighting.
"nnoremap <CR> :noh<CR>
nnoremap <silent> <CR> :noh<CR>


" <leader>t to create new tab.
noremap <leader>t :tabnew<CR>
" <leader>tt to create new terminal tab.
noremap <leader>tt :tabnew<CR>:term ++curwin<CR>
" <leader>tc to close the current tab.
noremap <leader>tc :tabc<CR>


"Switch buffers
nnoremap ü :bnext<CR>
nnoremap ö :bprevious<CR>

"{{{ Comment text
nmap <leader>cc :Commentary<CR>
vmap <leader>cc :Commentary<CR>
"}}}"

" Turn On/Off NERDTree
map <leader>n :NERDTreeToggle %<CR>

" Reindent file and return to current line
map <leader>i mmgg=G`m<cr>


" Strip all trailing whitespace from a file, using ,W
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>


"packadd! vimspector
function! Menu()
    exec "tabnew | Startify"
endfunction

map <silent> <Leader>m :call Menu()<CR>


function! DebugProfile()
    if &filetype == 'cpp'
        exec "!cp $HOME/$VIMFILE_DIR/debug_profile/cpp/.vimspector.json %:h"
    elseif &filetype == 'py'
        exec "!cp $HOME/$VIMFILE_DIR/debug_profile/python/.vimspector.json %:h"
    endif
endfunction
nnoremap <leader>dp :call DebugProfile()<cr>


" Folding rules {{{
function! MyFoldText()
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - 4
    return line . ' …' . repeat(" ",fillcharcount) . foldedlinecount . ' '
endfunction
set foldtext=MyFoldText()

" Mappings to easily toggle fold levels
nnoremap z0 :set foldlevel=0<cr>
nnoremap z1 :set foldlevel=1<cr>
nnoremap z2 :set foldlevel=2<cr>
nnoremap z3 :set foldlevel=3<cr>
nnoremap z4 :set foldlevel=4<cr>
nnoremap z5 :set foldlevel=5<cr>

nnoremap <space> za
vnoremap <Space> za
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

"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" By default timeoutlen is 1000 ms
"set timeoutlen=500
