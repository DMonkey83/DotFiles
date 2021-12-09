scriptencoding utf-8

" change fillchars for folding, vertical split, end of buffer, and message separator
set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾

" Paste mode toggle, it seems that Nvim's bracketed paste mode
" does not work very well for nvim-qt, so we use good-old paste mode
set pastetoggle=<F12>

" Split window below/right when creating horizontal/vertical windows
set splitbelow splitright

" Clipboard settings, always use clipboard for all delete, yank, change, put
" operation, see https://stackoverflow.com/q/30691466/6064933
if !empty(provider#clipboard#Executable())
  set clipboard+=unnamedplus
endif

" Disable creating swapfiles, see https://stackoverflow.com/q/821902/6064933
set noswapfile

" Ignore certain files and folders when globing
set wildignore+=*.o,*.obj,*.dylib,*.bin,*.dll,*.exe
set wildignore+=*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**
set wildignore+=*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico
set wildignore+=*.pyc,*.pkl
set wildignore+=*.DS_Store
set wildignore+=*.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv
set wildignorecase  " ignore file and dir name cases in cmd-completion

" Set up backup directory
let g:backupdir=expand(stdpath('data') . '/backup')
if !isdirectory(g:backupdir)
   call mkdir(g:backupdir, 'p')
endif
let &backupdir=g:backupdir

" Skip backup for patterns in option wildignore
let &backupskip=&wildignore
set backup  " create backup for files
set backupcopy=yes  " copy the original file to backupdir and overwrite it

" General tab settings
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " expand tab to spaces so that tabs are spaces

" Set matching pairs of characters and highlight matching brackets
set matchpairs+=<:>,「:」,『:』,【:】,“:”,‘:’,《:》

set number relativenumber  " Show line number and relative line number

" Ignore case in general, but become case-sensitive when uppercase is present
set ignorecase smartcase

" File and script encoding settings for vim
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

" Break line at predefined characters
set linebreak
" Character to show before the lines that have been soft-wrapped
set showbreak=↪

" List all matches and complete till longest common string
set wildmode=list:longest

" Minimum lines to keep above and below cursor when scrolling
set scrolloff=3

" Use mouse to select and resize windows, etc.
set mouse=nic  " Enable mouse in several mode
set mousemodel=popup  " Set the behaviour of mouse

" Do not show mode on command line since vim-airline can show it
set noshowmode

set inccommand=nosplit  " Show the result of substitution in real time for preview

" Ask for confirmation when handling unsaved or read-only files
set confirm

set history=500  " The number of command and search history to keep

" Use list mode and customized listchars
set list listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:␣

" Auto-write the file based on some condition
set autowrite

" Persistent undo even after you close a file and re-open it
set undofile

" Do not show "match xx of xx" and other messages during auto-completion
set shortmess+=c

" Align indent to next multiple value of shiftwidth. For its meaning,
" see http://vim.1045645.n5.nabble.com/shiftround-option-td5712100.html
set shiftround

" Correctly break multi-byte characters such as CJK,
" see https://stackoverflow.com/q/32669814/6064933
set formatoptions+=mM

" Enable true color support. Do not set this option if your terminal does not
" support true colors! For a comprehensive list of terminals supporting true
" colors, see https://github.com/termstandard/colors and https://gist.github.com/XVilka/8346728.
set termguicolors

" Set up cursor color and shape in various mode, ref:
" https://github.com/neovim/neovim/wiki/FAQ#how-to-change-cursor-color-in-the-terminal
set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20

" diff options
set diffopt=
set diffopt+=vertical  " show diff in vertical position
set diffopt+=filler  " show filler for deleted lines
set diffopt+=closeoff  " turn off diff when one file window is closed
set diffopt+=context:3  " context for diff
set diffopt+=internal,indent-heuristic,algorithm:histogram
