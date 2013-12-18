let g:pathogen_disabled = []
if !has('gui_running')
   call add(g:pathogen_disabled, 'powerline')
endif

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible " be iMproved

syntax on
filetype plugin indent on

set number              " show line number
set noswapfile          " no swap file
set nobackup            " no backup file
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set showmatch

" .vimrc文件变化后自动更新
autocmd! bufwritepost .vimrc source ~/.vimrc

"{{{ theme settings
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized
"}}}

"{{{ statusline settings
set laststatus=2
if has("statusline")
        set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
"}}}

"{{{ folder settings
set fdm=marker
"}}}

let g:NERDTreeChDirMode=1         " 自动进入工作目录
"{{{ NERDTree设置
nmap <F3> :NERDTreeToggle <CR>    " 快捷键F3
let g:NERDTreeDirArrows=0         " 使用+/~作为目录折叠的符号
"}}}

set noerrorbells
set visualbell
"set t_vb= "close visual bell
