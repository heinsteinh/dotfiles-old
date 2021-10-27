" Use commas as leaders
let mapleader = ','
let maplocalleader = ','
let g:mapleader = ','


"Vimrc quick edit
nnoremap <Leader>pv :split $MYVIMRC<CR>
nnoremap <Leader>vv :vsplit $MYVIMRC<CR>
nnoremap <Leader>rv :source $MYVIMRC<CR>
nnoremap <Leader>r  :source $MYVIMRC<CR>:echo "Reloaded: " . $MYVIMRC<CR>
nnoremap <Leader>tv :tabnew $MYVIMRC<CR>
nnoremap <Leader>ev :edit $MYVIMRC<CR>

nnoremap <leader>et :exec ":vsp $HOME/notes/" . strftime('%m-%d-%y') . ".md"<CR>
" Quick PluginStall
nnoremap <Leader>pi :source $MYVIMRC<cr>:PluginInstall<cr>


" Faster command mode access
"nnoremap <Space> :
"nnoremap ; :!

"Faster navigation
nnoremap J <C-d>
nnoremap K <C-u>

"Select ALL
" [COMMAND+INSERT+VISUAL] CTRL-A to select all text
nnoremap <C-a> ggVG<CR>
inoremap <C-a> <Esc>ggVG<CR>
vnoremap <C-a> <Esc>ggVG<CR>

" [COMMAND+INSERT+VISUAL] SHIFT-DEL to remove line
nnoremap <S-Del> <esc>dd
inoremap <S-Del> <esc>dd==gi
vnoremap <S-Del> <esc>ddgv=gv

" [COMMAND+INSERT+VISUAL] CTRL-UP Move line up
nnoremap <silent> <C-Up> :silent! m .-2<CR>==
inoremap <silent> <C-Up> <Esc>:silent! m .-2<CR>==gi
vnoremap <silent> <C-Up> :m '<-2<CR>gv=gv

" [COMMAND+INSERT+VISUAL] CTRL-DOWN Move line down
nnoremap <C-Down> :silent! m .+1<CR>==
inoremap <C-Down> <Esc>:silent! m .+1<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv

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

" " [COMMAND] CTRL-W quit tab
" nnoremap <C-w> :q<CR>
" inoremap <C-w> <ESC>:q<CR>
" vnoremap <C-w> <ESC>:q<CR>

" [EDIT+VISUAL+COMMAND] CTRL-f open search
nnoremap <C-f> /
"nnoremap <C-f> : <CR>
inoremap <C-f> <ESC>/
vnoremap <C-f> <ESC>/

" [EDIT+VISUAL+COMMAND] ALT-f open search replace
nnoremap <M-r> :%s/
inoremap <M-r> <ESC>:%s,r/
vnoremap <M-r> <ESC>:%s/

" [EDIT+VISUAL+COMMAND] ALT-f clear search
nnoremap <M-f> :noh<CR>
inoremap <M-f> <ESC>:noh<CR>gi
vnoremap <M-f> <ESC>:noh<CR>gv=gv

" [EDIT+VISUAL+COMMAND] CTRL-K UP Split above
nnoremap <C-v><Up> :above split<CR>
inoremap <C-v><Up> <ESC>:above split<CR>gi
vnoremap <C-v><Up> <ESC>:above split<CR>gv=gv

" [EDIT+VISUAL+COMMAND] CTRL-K DOWN Split below
nnoremap <C-v><Down> :below split<CR>
inoremap <C-v><Down> <ESC>:below split<CR>gi
vnoremap <C-v><Down> <ESC>:below split<CR>gv=gv

" [EDIT+VISUAL+COMMAND] CTRL-K LEFT Split left
nnoremap <C-v><Left> :vsplit<CR>
inoremap <C-v><Left> <ESC>:vsplit<CR>gi
vnoremap <C-v><Left> <ESC>:vsplit<CR>gv=gv

" [EDIT+VISUAkL+COMMAND] CTRL-K RIGHT Split right
nnoremap <C-v><Right> :botright vsplit<CR>
inoremap <C-v><Right> <ESC>:botright vsplit<CR>gi
vnoremap <C-v><Right> <ESC>:botright vsplit<CR>gv=gv


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
vnoremap <M-Down> <ESC>:wincmd j<CR>gv=gv

" " [EDIT+VISUAL+COMMAND] SHIFT-DOWN Scroll down fast
" nnoremap <silent> <S-Down> :call comfortable_motion#flick(200)<CR>
" inoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gi
" vnoremap <silent> <S-Down> <ESC>:call comfortable_motion#flick(200)<CR>gv=gv

" " [EDIT+VISUAL+COMMAND] SHIFT-UP Scroll up fast
" nnoremap <silent> <S-Up> :call comfortable_motion#flick(-200)<CR>
" inoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi
" vnoremap <silent> <S-Up> <ESC>:call comfortable_motion#flick(-200)<CR>gi




" Toggle line wrapping
nnoremap <Leader>wp :set wrap!<CR>

" splits
"nnoremap <leader>v :vsplit<CR>:Explore<CR>
"nnoremap <leader>s :split<CR>:Explore<CR>

" Switch CWD to the directory of the open buffer
vnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>

" activate spell checking
nnoremap <leader>ss :set spell!<cr>

" Spellcheck US Words
"set spell spelllang=en_us

" Quit all
noremap <c-q> :confirm qall<cr>



"
" Easy mapping to highlight pasted text
" http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

"Indenting

" {{{ Searching
" Search and replace
" Present substitutions in realtime
" Search results centered
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
" Very magic by default
nnoremap ? ?\v
nnoremap / /\v
cnoremap %s/ %sm/
" Proper search
set incsearch
set ignorecase
set smartcase

set gdefault
" }}}

" Search and replace the word under the cursor
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>


" search for visually hightlighted text
vnoremap <C-f> y<esc>/<c-r>"<cr>
vnoremap <C-r> "0y<esc>:%s/<C-r>0//g<left><left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer Navigation
" Leader B"{{{
" delete the current buffer but keep split open


"Switch buffers
nnoremap ü :bnext<CR>
nnoremap ö :bprevious<CR>
"}}}

" {{{ Git
" }}}
"
"
"
" Tabularize"{{{
"}}}

" Leader T"{{{
"nnoremap <Left>                                                                          :tabprev<CR>
"nnoremap <Right>                                                                  :tabnext<CR>

"}}}

" Open Shell
nnoremap <S-s> :shell<CR>

" Special"{{{
nnoremap <Leader>ev       :tabnew $MYVIMRC<cr>
nnoremap <Leader>sv        :source $MYVIMRC<cr>
noremap  <Leader>su        :w !sudo tee % > /dev/null
nnoremap <Leader>p         :setlocal paste!<CR>
nnoremap <Leader>cdc :cd %:p:h<CR>
nnoremap <Leader>sde :setlocal spell spelllang=de_DE<CR>
nnoremap <Leader>sen :setlocal spell spelllang=en<CR>
nnoremap <Leader>ml        :tabnew ~/Dropbox\ Lists/buffer.txt<CR>
"}}}


" Reload all files open
nnoremap <Leader>rr :bufdo e!<CR>:tabdo e!<CR>


" Toggle relative line numbering
nnoremap <Leader>rn :call ToggleRelativeNumber()<CR>

" Toggle virtual editing
nnoremap <Leader>ve :call ToggleVirtualEdit()<CR>

" Toggle mouse modes
nnoremap <Leader>mm :call ToggleMouse()<CR>

" Clean code
nmap <leader>tt :call CleanCode()<cr>


" NERDTree
nmap <leader>no :NERDTree<CR>
nmap <leader>nt :NERDTreeToggle<CR>
nmap <leader>nq :NERDTreeClose<CR>
nmap <leader>nm :NERtTreeMirror<CR>
nmap <leader>nf :NERDTreeFind<CR>
nmap <leader>nc :NERDTreeCWD<CR>


" Taglist mappings
nmap <Leader>tbg :TagbarToggle<CR>
nmap <Leader>tbo :TagbarOpen<CR>
nmap <Leader>tbc :TagbarClose<CR>


" ctags
nmap <LEADER>ct :w !find -E `pwd` -regex ".*\\.(h\|c\|java\|php\|py)" \| xargs ctags -f ~/.tags -R --c++-kinds=+px --fields=+iaS --extra=+q<CR><CR>



map <silent> <F2> :!ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+px --fields=+ialS --extra=+q -R -f ~/.vim/systags /usr/include /usr/local/include<CR>:!ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p --c++-kinds=+px --fields=+ialS --extra=+q -R -f ~/.vim/tangtags /tang/include<CR>:set tags+=~/.vim/systags<CR>:set tags+=~/.vim/tangtags<CR>

set tags+=~/.vim/systags
set tags+=~/.vim/tangtags

map <silent> <F10> :!ctags -R .<CR><CR>
map <silent> <F11> :!ctags -R --c++-kinds=+px --fields=+iaS --extra=+q .<CR><CR>
map <silent> <F12> :!ctags -R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px --fields=+aiKSz --extra=+q .<CR><CR>

" \ff                                                                                       
"nmap <leader>ff :CtrlP<CR>

imap <leader>rt <esc>:call RemoveTabs()<cr>
nmap <leader>rt :call RemoveTabs()<cr>
vmap <leader>rt <esc>:call RemoveTabs()<cr>

