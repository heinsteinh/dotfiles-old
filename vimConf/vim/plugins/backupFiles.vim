" backupFiles.vim
" redirect where all the backup files get stored
" Paul Rohwer August 21, 2020
"
"
" Windows only.
"
"


"set nobackup       "no backup files
"set nowritebackup  "only in case you don't want a backup file while editing
"set noswapfile     "no swap files

let s:MSWIN = has("win16") || has("win32")   || has("win64")    || has("win95")
if s:MSWIN 
                set backup
                set backupdir=C:\Temp\vim\backup\\
                set backupskip=C:\Temp\vim\backup_skip\*
                set directory=C:\Temp\vim\swp\\
                set writebackup
                set undodir=C:\Temp\vim\undodir\\
else 
                set backup
                set backupdir=~/tmp/vim/backup//
                set backupskip=~/tmp/vim/*
                set directory=~/tmp/vim/swp//
                set writebackup
                set undodir=~/tmp/vim/undodir//
endif


" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif


" vim: tabstop=2 shiftwidth=2 foldmethod=marker expandtab
