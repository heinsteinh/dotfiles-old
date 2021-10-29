let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
" Preview window on the upper side of the window with 40% height,
" hidden by default, ctrl-/ to toggle

"let g:fzf_layout = { 'down': '~30%' }
let g:fzf_preview_window = ['right:30%', 'ctrl-/']

if g:is_win
    let g:fzf_history_dir = 'c:/temp/pzf-history'

elseif g:is_linux
    let g:fzf_history_dir = '$HOME/.local/share/fzf-history'


    
endif


"let g:fzf_tags_command = 'ctags -R'
" Border color
"let g:fzf_layout = { 'window': 'e}
"let g:fzf_layout = { 'down': '~30%' }
"let g:fzf_layout = { 'window': '10split enew' }
"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"




"" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }


"FZF keymaps
" https://github.com/junegunn/fzf.vim#commands
nnoremap <leader>fb  :Buffers<CR>
" nnoremap <leader>b   :Buffers<CR>
nnoremap <leader>ff  :Files<CR>
nnoremap <leader>fgf :GFiles<CR>
nnoremap <leader>fag :Ag<CR>
nnoremap <leader>fl  :Lines<CR>
nnoremap <leader>fh  :History<CR>
nnoremap <leader>;   :History<CR>
nnoremap <leader>fs  :Snippets<CR>
nnoremap <leader>fco :Commits<CR>
nnoremap <leader>fcb :BCommits<CR>
nnoremap <leader>fw  :Windows<CR>
nnoremap <leader>fc  :Commands<cr>
nnoremap <leader>ff  :FzfFunky<cr>
