

if(has("win32") || has("win64"))
    let g:isWIN = 1
else
    let g:isWIN = 0
endif

set shiftwidth=4


"=====================================================================
"                 		        Function
"=====================================================================

"===============================================================================
" File: functions.vim
" Author: Eli Gundry <eligundry@gmail.com>
" Description: Custom Vim functions I wrote
"===============================================================================

" Toggle relative line numbering
function! ToggleRelativeNumber()
	if &relativenumber
		set number
	elseif !&number
		set relativenumber
	else
		set nonumber norelativenumber
	endif
endfunction

" Toggle virtualedit settings
function! ToggleVirtualEdit()
	if &virtualedit == "all"
		set virtualedit=onemorr
	else
		set virtualedit=all
	endif
endfunction

" Toggle mouse modes
function! ToggleMouse()
	if &mouse == "a"
		set mouse=
	else
		set mouse=a
	endif
endfunction


" "  Clean code function
" function! CleanCode()
"   %retab          " Replace tabs with spaces
"   %s///eg     " Turn DOS returns ^M into real returns
"   %s=  *$==e      " Delete end of line blanks
"   echo "Cleaned up this mess."
" endfunction

" Clean code function
function! s:CleanCode()
  %retab " Replace tabs with spaces
  %s= *$==e " Delete end of line blanks
  %s/\r//eg " Remove DOS returns ^M
  echo "Cleaned up this mess."
endfunction


function! Resize(dir)
  let this = winnr()
  if '+' == a:dir || '-' == a:dir
    execute "normal \<c-w>k"
    let up = winnr()
    if up != this
      execute "normal \<c-w>j"
      let x = 'bottom'
    else
      let x = 'top'
    endif
  elseif '>' == a:dir || '<' == a:dir
    execute "normal \<c-w>h"
    let left = winnr()
    if left != this
      execute "normal \<c-w>l"
      let x = 'right'
    else
      let x = 'left'
    endif
  endif
  if ('+' == a:dir && 'bottom' == x) || ('-' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>+"
  elseif ('-' == a:dir && 'bottom' == x) || ('+' == a:dir && 'top' == x)
    return "5\<c-v>\<c-w>-"
  elseif ('<' == a:dir && 'left' == x) || ('>' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w><"
  elseif ('>' == a:dir && 'left' == x) || ('<' == a:dir && 'right' == x)
    return "5\<c-v>\<c-w>>"
  else
    echo "oops. check your ~/.vimrc"
    return ""
  endif
endfunction
" /*}}}*/


func! RemoveTabs()
    if &shiftwidth == 2
        exec "%s/   /  /g"
    elseif &shiftwidth == 4
        exec "%s/   /    /g"
    elseif &shiftwidth == 6
        exec "%s/   /      /g"
    elseif &shiftwidth == 8
        exec "%s/   /        /g"
    else
        exec "%s/   / /g"
    end
endfunc


func! Compile_Run_Code()
    exec "w"
    if &filetype == "c"
        if g:isWIN
            exec "!gcc -Wall -std=c11 -o %:r %:t && %:r.exe"
        else
            exec "!gcc -Wall -std=c11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "cpp"
        if g:isWIN
            exec "!g++ -Wall -std=c++11 -o %:r %:t && %:r.exe"
        else
            exec "!g++ -Wall -std=c++11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "d"
        if g:isWIN
            exec "!dmd -wi %:t && %:r.exe"
        else
            exec "!dmd -wi %:t && ./%:r"
        endif
    elseif &filetype == "go"
        if g:isWIN
            exec "!go build %:t && %:r.exe"
        else
            exec "!go build %:t && ./%:r"
        endif
    elseif &filetype == "rust"
        if g:isWIN
            exec "!rustc %:t && %:r.exe"
        else
            exec "!rustc %:t && ./%:r"
        endif
    elseif &filetype == "java"
        exec "!javac %:t && java %:r"
    elseif &filetype == "groovy"
        exec "!groovy %:t"
    elseif &filetype == "scala"
        exec "!scala %:t"
    elseif &filetype == "clojure"
        exec "!clojure -i %:t"
    elseif &filetype == "cs"
        if g:isWIN
            exec "!csc %:t && %:r.exe"
        else
            exec "!mono-csc %:t && ./%:r.exe"
        endif
    elseif &filetype == "fsharp"
        if g:isWIN
            exec "!fsc %:t && %:r.exe"
        else
            exec "!fsharpc %:t && ./%:r.exe"
        endif
    elseif &filetype == "scheme" || &filetype == "racket"
        exec "!racket -f %:t"
    elseif &filetype == "lisp"
        exec "!clisp -i %:t"
    elseif &filetype == "ocaml"
        if g:isWIN
            exec "!ocamlc -o %:r.exe %:t && %:r.exe"
        else
            exec "!ocamlc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "haskell"
        if g:isWIN
            exec "!ghc -o %:r %:t && %:r.exe"
        else
            exec "!ghc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "lua"
        exec "!lua %:t"
    elseif &filetype == "perl"
        exec "!perl %:t"
    elseif &filetype == "php"
        exec "!php %:t"
    elseif &filetype == "python"
        exec "!python %:t"
    elseif &filetype == "ruby"
        exec "!ruby %:t"
    elseif &filetype == "elixir"
        exec "!elixir %:t"
    elseif &filetype == "julia"
        exec "!julia %:t"
    elseif &filetype == "dart"
        exec "!dart %:t"
    elseif &filetype == "coffee"
        exec "!coffee -c %:t && node %:r.js"
    elseif &filetype == "typescript"
        exec "!tsc %:t && node %:r.js"
    elseif &filetype == "javascript"
        exec "!node %:t"
    elseif &filetype == "sh"
        exec "!bash %:t"
    endif
endfunc
