" basics
set nocompatible
syntax on
set encoding=utf-8
filetype plugin on
set laststatus=2
set ic

" tab settings
set tabstop=4
set shiftwidth=4
"set expandtab
set noexpandtab
set autoindent
"set smartindent

" line numbers
set number relativenumber
set numberwidth=3

" colors
set t_Co=256

set splitbelow splitright

" autocomplete
set wildmode=longest,list,full

" build some tags files with ctags -R and use them
set tags+=/home/geo/go/src/github.com/geo-stanciu/

" move from split to split
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" copy to clipboard
vnoremap <C-c> "+y

colorscheme industry

" hightlight current line + mark 80th column
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=234

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9

match OverLength /\%>80v.\+/

" clear extra trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" tabs to spaces
"autocmd FileType h,c,cpp,java,php,sh,js,go,py autocmd BufWritePre <buffer> :retab

