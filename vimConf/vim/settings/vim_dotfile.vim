


" File Navigation {{{ <leader>e-
" open snippet file for current filetype
nnoremap <leader>es :CocCommand snippets.editSnippets<cr>
" open filetype for current filetype
nnoremap <leader>ef :vsplit $DOTFILES/vim/ftplugin/<C-R>=&filetype<CR>.vim<CR>
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
