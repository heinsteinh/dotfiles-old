
"{{{ General configuration options
"

" Turn on syntax highlighting
syntax on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
"set path+=**

"Use Vim settings, rather then Vi settings. It's important to have this on the top of your file, as it influences other options.
set nocompatible
"- Allow backspacing over indention, line breaks and insertion start.
set backspace=indent,eol,start
"- Set bigger history of executed commands.
set history=1000
"- Show incomplete commands at the bottom.
set showcmd
"- Show current mode at the bottom.
set showmode
"- Automatically re-read files if unmodified inside Vim.
set autoread

"- Manage multiple buffers effectively: the current buffer can be 'sent' to the background without writing to disk. When a background buffer becomes current again, marks and undo-history are remembered. See chapter Buffers to understand this better.
set hidden
" Show incomplete commands
set showcmd
" Security
set modelines=0

"}}}

"{{{ User Interface Options
"- Always display the status bar.
set laststatus=2
"- Always show cursor position.
set ruler
"- Display command line's tab complete options as a menu.
set wildmenu
" Decent wildmenu
set wildmenu
set wildmode=longest:full,full
set wildignore=.hg,.svn,*~,*.png,*.jpg,*.gif,*.settings,Thumbs.db,*.min.js,*.swp,publish/*,intermediate/*,*.o,*.hi,Zend,vendor
" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

set undofile   " Maintain undo history between sessions

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
"set clipboard+=unnamed

" Visualize tabs and newlines
set list
"set listchars=space:.,eol:¬,trail:.,tab:>.
"set listchars=eol:↵,tab:➝\ ,trail:~,extends:>,precedes:<,space:·
" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Tenths of a second to show the matching paren, when 'showmatch' is set.
set matchtime=1

" Make < and > as well as match pairs.
set matchpairs+=<:>

"- Maximum number of tab pages that can be opened from the command line.
set tabpagemax=40
"- Highlight the line currently under cursor.
set cursorline
"- Show line numbers on the sidebar.
set number
"- Show line number on the current line and relative numbers on all other lines. Works only if the option above (number) is enabled.
"set relativenumber
"- Disable beep on errors.
set noerrorbells
"- Flash the screen instead of beeping on errors.
set visualbell
"- Enable mouse for scrolling and resizing.
set mouse=a
"- Use colors that suit a dark background.
set background=dark
"- Set the window’s title, reflecting the file currently being edited.
set title

"}}}

"{{{ Swap and backup file options
"set noswapfile
"set nobackup
"set nowb
"}}}
"
"{{{
set foldcolumn=3
set foldmethod=marker   "marker, indent,  manual, expr, syntax, diff.

"set foldenable          " enable folding
"set foldlevelstart=10   " open most folds by default
"set foldnestmax=10      " 10 nested fold max
"}}}

"{{{ Indentation options
"- New lines inherit the indentation of previous lines.
set autoindent
"- Smart auto indentation (instead of old smartindent option).
filetype plugin indent on
"- Show existing tab with 4 spaces width.
set tabstop=4
"- When indenting with '>', use 2 spaces width.
set shiftwidth=2
"- On pressing tab, insert 4 spaces.
set expandtab
"- Don't wrap lines.
set nowrap
"}}}

"{{{Search options
nnoremap / /\v
vnoremap / /\v
"- Find the next match as we type the search.
set incsearch
"- Highlight searches by default.
set hlsearch
"- Ignore case when searching ...
set ignorecase
"- ... unless you type a capital.
set smartcase
set showmatch
" clear search
map <leader><space> :let @/=''<cr> "

" CtrlP -> files matched are ignored when expanding wildcards
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store
"}}}

"{{{Text rendering options
"- Use an encoding that supports Unicode.
set encoding=utf-8
"- Wrap lines at convenient points, avoid wrapping a line in the middle of a word.
set linebreak
"- The number of screen lines to keep above and below the cursor.
set scrolloff=3
"- The number of screen columns to keep to the left and right of the cursor.
set sidescrolloff=5
"- Enable syntax highlighting.
syntax enable
"set termguicolors
"}}}

"{{{ Miscellaneous Options
"- Display a confirmation dialog when closing an unsaved file.
"set confirm
set confirm
"- Ignore file’s mode lines; use vimrc configurations instead.
set nomodeline
" - Interpret octal as decimal when incrementing numbers.
set nrformats-=octal
"- The shell used to execute commands.
"set shell
"- Enable spellchecking.
"set spell
" Blink cursor on error instead of beeping (grr)
set visualbell

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright


" Restore buffer list, marks are remembered for 9999 files, memory registers up to 512Kb are remembered.
set viminfo=%,'9999,s512,nF:\\VimData\\files-viminfo
"}}}

" {{{ Selection
" Change selected letters when write
set selectmode=mouse,key

" Select with SHIFT + ARROW for Vim-noobs
set keymodel=startsel,stopsel

" Enable select with mouse in insert mode
set selection=exclusive

" Can move cursor past end of line, where there are no characters, in visualblock mode
set virtualedit=block

" Visual selection automatically copied to clipboard
set go+=a
"}}}


" Use Unix as the standard file type
set ffs=unix,dos,mac
