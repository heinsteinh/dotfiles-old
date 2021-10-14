set complete+=kspell

autocmd FileType text setlocal spell spelllang=en_us
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType gitcommit setlocal spell  spelllang=en_us

autocmd BufNewFile,BufRead *.md set filetype=markdown
