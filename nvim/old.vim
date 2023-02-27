let mapleader = ","

set number
set relativenumber
set scrolloff=8
set encoding=utf-8
set noswapfile
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

syntax enable

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'psf/black', { 'branch' : 'stable' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" airline theme
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
let g:airline#extensions#tabline#namemode=':t' " to show only buffer names
let g:airline_theme='tomorrow'

" NERDCommenter settings
filetype plugin on
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
" NERDCommenter settings end

" colorscheme tokyonight-night
colorscheme nord

" NERDTree
ab nt NERDTree<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
map <C-n> :NERDTreeToggle<CR>

noremap <C-\> :below split \| terminal<CR>i
tnoremap <C-\> <C-\><C-n>:q<CR>

" Quality of life mapping :)
inoremap jj <Esc>
inoremap :wq <ESC>:wq
inoremap :w <ESC>:w

" Buffer mapping
nnoremap <Leader>, :bnext<CR>
inoremap <Leader>, <Esc>:bnext<CR>
nnoremap <Leader>. :bprevious<CR>
inoremap <Leader>. <Esc>:bprevious<CR>

" Python mapping
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
inoremap < <><Left>
inoremap [ []<Left>
inoremap """ """"""<Left><Left><Left>
inoremap ''' ''''''<Left><Left><Left>

" django mapping
inoremap {% {%  %}<Left><Left><Left>
inoremap blc {% block content %}<CR><CR><CR><CR>{% endblock %}<Up><Up>

inoremap ciw <Esc>ciw
inoremap diw <Esc>diw
inoremap yiw <Esc>yiw

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
