syntax on
set number
set cursorline
set nobackup
set noswapfile
set shell=/usr/bin/zsh
set smartindent
set shiftwidth=4
set termguicolors
set clipboard+=unnamedplus
set nocompatible
" default updatetime 4000ms is not good for async update
set updatetime=100


noremap j h
noremap i k
noremap k j
noremap h i
map CH :checkhealth<CR>
map <F10> :source $MYVIMRC<CR>
map S :w<CR>
map Q :wq<CR>
map ! :q!<CR>
"=== screen split keybindings
map sp :split
map vsp :vsplit
map <C-j> <C-w>h
map <C-l> <C-w>l
map <C-i> <C-w>k
map <C-k> <C-w>j
map vw= :vertical resize +5<CR>
map vw- :vertical resize -5<CR>
map sw= :resize +5<CR>
map sw- :resize -5<CR>
"=== vim buffering keybindings
map b[ :bprivious<CR>
map b] :bnext<CR>
map bd :bdelete
"=== vim-plug keybindings
map PI :PlugInstall<CR>
map PU :PlugUpdate<CR>
map PC :PlugClean<CR>

colorscheme molokai


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/vim-plug'

" Adds file type icons to Vim plugins
"Plug 'ryanoasis/vim-devicons'
" adding to vim-airline's tabline
"let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
"let g:webdevicons_enable_airline_statusline = 1

Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" Vim plugin that displays tags in a window, ordered by scope 
Plug 'majutsushi/tagbar'	
nmap <F8> :TagbarToggle<CR>

" The fancy start screen for Vim. 
Plug 'mhinz/vim-startify'

" Intellisense engine for Vim8 & Neovim, full language server protocol support as VSCode 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'ycm-core/YouCompleteMe'

"Show a diff using Vim its sign column. 
Plug 'mhinz/vim-signify'

" Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'dense-analysis/ale'

" Chinese vim-doc
Plug 'yianwillis/vimcdoc'

" Rainbow Parentheses Improved, shorter code, no level limit, smooth and fast, powerful configuration. 
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" Vim syntax highlighting for c, bison, flex 
Plug 'justinmk/vim-syntax-extra'


" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }


" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()




