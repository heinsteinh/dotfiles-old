let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~\dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 50 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 182 + 115) / 230)
exe '2resize ' . ((&lines * 15 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 182 + 115) / 230)
exe 'vert 3resize ' . ((&columns * 47 + 115) / 230)
argglobal
enew
balt vimConf\vim\sessions\Prog.vim
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
balt vimConf\vim\sessions\Prog.vim
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
argglobal
enew
balt vimConf\vim\sessions\Prog.vim
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~\dotfiles
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 50 + 35) / 70)
exe 'vert 1resize ' . ((&columns * 182 + 115) / 230)
exe '2resize ' . ((&lines * 15 + 35) / 70)
exe 'vert 2resize ' . ((&columns * 182 + 115) / 230)
exe 'vert 3resize ' . ((&columns * 47 + 115) / 230)
tabnext 1
badd +26 ~\dotfiles\vimConf\vimrc
badd +1 ~\dotfiles\vimConf\vim\plugins\settings_startify.vim
badd +30 ~\dotfiles\vimConf\vim\sessions\Prog.vim
badd +1 ~\NERD_tree_1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOSc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
