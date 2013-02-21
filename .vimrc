set nocompatible
"""vundle related
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Valloric/YouCompleteMe'
Bundle 'othree/eregex.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'camelcasemotion'
Bundle 'AutoTag'
Bundle 'bufexplorer.zip'
Bundle 'argtextobj.vim'
Bundle 'AutoClose'
Bundle 'bufkill.vim'
" non github repos'
"""Bundle 'git://git.wincent.com/command-t.git'
" ...

"""golang related
set rtp+=$GOROOT/misc/vim

filetype plugin indent on     " required!

"""easymotion related
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="_"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"""tagbar related
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds'     : [
        \ 'T:types',
        \ 's:structs',
        \ 'c:classes',
        \ 'm:modules',
        \ 'C:consts',
        \ 't:traits',
        \ 'i:impls',
        \ 'f:functions',
    \ ]
    \ }
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"
"""My favorite settings
set number
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
"----------------
syntax on
highlight LineNr ctermfg=darkgrey

set smartcase
set wrapscan
set hlsearch
set autoindent smartindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set wrap

nnoremap <C-k> ^d$
nnoremap <C-a> <home>
nnoremap <C-e> <End>
nnoremap / :M/
nnoremap ,/ /
nnoremap ,s :FufFile<CR>
nmap ,p :set paste!<CR>

inoremap <C-e> <Esc>

nmap j gj
nmap k gk

map <C-d> <Del>
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
map ,l <Leader>bv

autocmd FileType erlang set tags+=/home/yk/dev/erlang/ctags.otp
autocmd FileType go set tags+=/home/yk/dev/golang/ctags.go
autocmd FileType rust set tags+=/home/yk/dev/rust/ctags.rust

autocmd vimenter * if !argc() | NERDTree | endif
