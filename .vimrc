set nocompatible
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
colorscheme ron
highlight LineNr ctermfg=darkgrey

set smartcase
set wrapscan
set hlsearch

set autoindent
set cindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed

set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
set nowrap

nnoremap <Space>h <Home>
nnoremap <Space>l <End>
inoremap <Space>h <Home>
inoremap <Space>l <End>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-e> <Esc>

inoremap <C-d> <Del>
noremap <CR> i<CR><ESC>

inoremap {} {}<LEFT>
inoremap [] []<LEFT>
inoremap () ()<LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap <> <><LEFT>

nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

nnoremap <C-h> :sp<CR>
nnoremap <C-v> :vsp<CR>

