" [VIM Spelling Suggestions with fzf | Codementor]
" (https://www.codementor.io/@coreyja/coreyja-vim-spelling-suggestions-with-fzf-p6ce3zb9a)


"set spell spelllang=en_us,de_de spellfile=~/.vim/spell/all.utf-8.add,~/.vim/spell/de.utf-8.add,~/.vim/spell/en.utf-8.add

" activate spell checking
nnoremap <leader>ss :set spell!<cr>
"set spell
set spelllang=en_us,de_de,fr
let g:spelldir=expand(glob('$HOME/$VIMFILE_DIR/spell/'))
let &spellfile=g:spelldir . '/' . substitute(&spelllang, '_.*', '', '') . '.' . &encoding . '.add'
set dictionary+=/usr/share/dict/words
set dictionary+=~/.config/dict/words
set thesaurus+=~/.config/dict/thesaurus
set complete-=k    " disable dictionary completion

if len(g:spelldir) && !isdirectory(g:spelldir)
  silent! execute '!mkdir -p ' . g:spelldir . ' > /dev/null'
endif


" These two functions allow me to use fzf for spell suggestions, which is much nicer than the default ui.
function! FzfSpellSink(word)
  exe 'normal! "_ciw'.a:word
endfunction

function! FzfSpell()
  let suggestions = spellsuggest(expand('<cword>'))
  return fzf#run({'source': suggestions, 'sink': function('FzfSpellSink'), 'down': 10 })
endfunction


" Use <leader><tab> in to get fzf spell suggestions.
nnoremap <leader><Tab> :call FzfSpell()<CR>
highlight SpellBad cterm=underline ctermfg=black ctermbg=208
