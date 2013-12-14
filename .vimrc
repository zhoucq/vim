let g:pathogen_disabled = []
if !has('gui_running')
   call add(g:pathogen_disabled, 'powerline')
endif

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set nocompatible " be iMproved

syntax on
filetype plugin indent on

"{{{ common settings
set number              " show line number
set noswapfile          " no swap file
set nobackup            " no backup file
"}}}

"{{{ theme settings
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"}}}

"{{{ statusline settings
if has("statusline")
        set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif
"}}}

"{{{ folder settings
set fdm=marker
"}}}

"{{{ NERDTree Key Mapping <F3>
nmap <F3> :NERDTreeToggle <CR>
"}}}

set noerrorbells
set novisualbell
set t_vb= "close visual bell
