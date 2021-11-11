"https://github.com/artificial-equation/dotfiles/blob/f33cc5459a3c532155daa93a0091ddfe3470499c/.config/nvim/cpp-configurcion.vim


 let g:vimspector_sidebar_width = 60


nnoremap <silent> <Leader>dd <cmd>call vimspector#Launch()<CR>

nnoremap <silent> <leader>dc :call GotoWindow(g:vimspector_session_windows.code)<CR>
nnoremap <silent> <leader>dv :call GotoWindow(g:vimspector_session_windows.variables)<CR>
nnoremap <silent> <leader>dw :call GotoWindow(g:vimspector_session_windows.watches)<CR>
nnoremap <silent> <leader>ds :call GotoWindow(g:vimspector_session_windows.stack_trace)<CR>
nnoremap <silent> <leader>do :call GotoWindow(g:vimspector_session_windows.output)<CR>


nnoremap <silent> <Leader>dj <cmd>call vimspector#StepInto()<CR>
nnoremap <silent> <Leader>dk <cmd>call vimspector#StepOut()<CR>
nnoremap <silent> <Leader>dl <cmd>call vimspector#StepOver()<CR>
nnoremap <silent> <Leader>d<SPACE> <cmd>call vimspector#Continue()<CR>

nnoremap <S-k> :call vimspector#StepOut()<CR>
nnoremap <S-l> :call vimspector#StepInto()<CR>
nnoremap <S-j> :call vimspector#StepOver()<CR>


nnoremap <silent> <Leader>dp <cmd>call vimspector#Pause()<CR>
nnoremap <silent> <Leader>ds <cmd>call vimspector#Stop()<CR>
nnoremap <silent> <Leader>de <cmd>call vimspector#Reset()<CR>

nnoremap <silent> <Leader>db <cmd>call vimspector#ToggleBreakpoint()<CR>




function! DebugProfile()
    if &filetype == 'cpp'
        exec "!cp ~/.vim/debug_profile/cpp/vimspector.json %:h"
    elseif &filetype == 'py'
        exec "!cp ~/.vim/debug_profile/python/vimspector.json %:h"
    endif
endfunction
nnoremap <leader>dp :call DebugProfile()<cr>


"{{{ Debuggiing 
command! -nargs=+ Vfb call vimspector#AddFunctionBreakpoint(<f-args>)

nnoremap <localleader>gd :call vimspector#Launch()<cr>
nnoremap <localleader>gc :call vimspector#Continue()<cr>
nnoremap <localleader>gs :call vimspector#Stop()<cr>
nnoremap <localleader>gR :call vimspector#Restart()<cr>
nnoremap <localleader>gp :call vimspector#Pause()<cr>
nnoremap <localleader>gb :call vimspector#ToggleBreakpoint()<cr>
nnoremap <localleader>gB :call vimspector#ToggleConditionalBreakpoint()<cr>
nnoremap <localleader>gn :call vimspector#StepOver()<cr>
nnoremap <localleader>gi :call vimspector#StepInto()<cr>
nnoremap <localleader>go :call vimspector#StepOut()<cr>
nnoremap <localleader>gr :call vimspector#RunToCursor()<cr>
"}}}

"{{{ clang_format.vim
function! s:JbzClangFormat(first, last)
  let l:winview = winsaveview()
  execute a:first . "," . a:last . "!clang-format"
  call winrestview(l:winview)
endfunction
command! -range=% JbzClangFormat call <sid>JbzClangFormat (<line1>, <line2>)

" Autoformatting with clang-format
au FileType c,cpp nnoremap <buffer><leader>lf :<C-u>JbzClangFormat<CR>
au FileType c,cpp vnoremap <buffer><leader>lf :JbzClangFormat<CR>
"}}}



"{{{ cmake.vim
let g:cmake_link_compile_commands = 1

nmap <leader>cg :CMakeGenerate<cr> "to generate cmake files
nmap <leader>cb :CMakeBuild<cr> "to build them
"}}}

"{{{ fswtich.vim
au BufEnter *.h  let b:fswitchdst = "c,cpp,cc,m"
au BufEnter *.cc let b:fswitchdst = "h,hpp"
au BufEnter *.h let b:fswitchdst = 'c,cpp,m,cc' | let b:fswitchlocs = 'reg:|include.*|src/**|'


nnoremap <silent> <A-o> :FSHere<cr>
" Extra hotkeys to open header/source in the split
nnoremap <silent> <localleader>oh :FSSplitLeft<cr>
nnoremap <silent> <localleader>oj :FSSplitBelow<cr>
nnoremap <silent> <localleader>ok :FSSplitAbove<cr>
nnoremap <silent> <localleader>ol :FSSplitRight<cr>
"}}}
"



"{{{  cpp-modern.vim
" " Disable function highlighting (affects both C and C++ files)
" let g:cpp_function_highlight = 0

" " Enable highlighting of C++11 attributes
" let g:cpp_attributes_highlight = 1

" " Highlight struct/class member variables (affects both C and C++ files)
" let g:cpp_member_highlight = 1

" " Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" " (affects both C and C++ files)
" let g:cpp_simple_highlight = 1

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

" Remove all trailing whitespaces
nnoremap <silent> <leader>rs :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

function! s:JbzCppMan()
    let old_isk = &iskeyword
    setl iskeyword+=:
    let str = expand("<cword>")
    let &l:iskeyword = old_isk
    execute 'Man ' . str
endfunction
command! JbzCppMan :call s:JbzCppMan()

au FileType cpp nnoremap <buffer>K :JbzCppMan<CR>

nnoremap <silent> <A-6> :Vista!!<CR>

"}}}
