set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set number
set numberwidth=5
set guifont=Fira\ Code
set background=light
set hlsearch

colorscheme lucius
LuciusWhite

if &compatible
  set nocompatible
endif


filetype off

" append to runtime path
set rtp+=/usr/share/vim/vimfiles

" initialize dein, plugins are installed to this directory
call dein#begin(expand('~/.cache/dein'))
    " add packages here, e.g:
    call dein#add('jonathanfilip/vim-lucius')
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')
    " exit dein
call dein#end()

" auto-install missing packages on startup
if dein#check_install()
    call dein#install()
endif

filetype plugin on
syntax enable

" remember last cursor position in file
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
