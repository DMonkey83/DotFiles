call plug#begin(stdpath('data') . '/plugged')
" JS/TS:
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FZF:
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }

" Elixir:
Plug 'elixir-editors/vim-elixir'

"Go:
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"NERDTree:
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"Delimiter:
Plug 'Raimondi/delimitMate'

" Comment/Uncomment tool:
Plug 'scrooloose/nerdcommenter'
" Switch to the begining and the end of a block by pressing %:
Plug 'tmhedberg/matchit'

" Git:
Plug 'tpope/vim-fugitive'

" A cool status bar:
Plug 'vim-airline/vim-airline'
" Airline themes:
Plug 'vim-airline/vim-airline-themes'
" Nord:
Plug 'arcticicestudio/nord-vim'
" Better syntax-highlighting for filetypes in vim:
Plug 'sheerun/vim-polyglot'

call plug#end()
"{ Main configurations:
let g:config_files = [
      \ 'globals.vim',
      \ 'options.vim',
      \ 'autocommands.vim',
      \ 'mappings.vim',
      \ 'plugins.vim',
      \ 'themes.vim'
      \ ]

for s:fname in g:config_files
  execute printf('source %s/core/%s', stdpath('config'), s:fname)
endfor
"}
