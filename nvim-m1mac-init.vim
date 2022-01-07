syntax on

set rtp+=/opt/homebrew/opt/fzf
set guicursor=
"set nohlsearch
set hlsearch
set hidden
set noerrorbells
set encoding=utf-8
set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set fileformat=unix
set number relativenumber
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=7
"set noshowmode
set complete+=kspell
set completeopt=menuone,longest
set shortmess+=c


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf',{ 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()
"Plug 'Valloric/YouCompleteMe'
"Plug 'vim-scripts/AutoComplPop'
"Plug 'mattn/emmet-vim'
"Plug 'airblade/vim-rooter'

colorscheme gruvbox
set background=dark

if executable('rg')
    left g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split=2
let g:netrw_banner = 0
let g:nwtrw_winsize = 25
let g:user_emmet_leader_key=','

let g:fzf_tags_command = 'ctags -R'
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nmap <C-P> :FZF<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
augroup END

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" Tabs (Airline)
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap <C-w> :bd<CR>

"Sirver/ultisnips and honza/vim-snippets
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumBackwardTrigger="<s-tab>"
"list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"

"nvim/lspconfig
lua << EOF
require'lspconfig'.pyright.setup{}
EOF

" neoclide/coc.nvim (for web development)
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-pyright', 'coc-eslint', 'coc-css']

" nnoremap <leader>rp :vertical resize 100<CR>

" YCM
" The best part.
"nnoremap <leader>gd :YcmCompleter GoTo<CR>
"nnoremap <leader>gf :YcmCompleter FixIt<CR>

"Plug 'ctrlpvim/ctrlp.vim'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"let g:ctrlp_use_caching = 0

"source $HOME/.vim/plug-config/coc.vim

