set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"vim plugin list

" plugin that shows functions/classes/etc. in right sidebar
Bundle 'majutsushi/tagbar'
" required to use Vundle
Plugin 'gmarik/Vundle.vim'
" plugin that provides smart auto-tabs
Plugin 'godlygeek/tabular'
" javascript syntax support for vim
Plugin 'jelera/vim-javascript-syntax'
" plugin that provides autocompletion support
Plugin 'ervandew/supertab'
" CSS syntax support for vim
Plugin 'vim-scripts/Better-CSS-Syntax-for-Vim'
" markdown syntax support for vim
Plugin 'plasticboy/vim-markdown'

"Plugin 'wincent/command-t'
"Plugin 'scrooloose/nerdcommenter'
" plugin that provides auto closing HTML tags
"Plugin 'docunext/closetag.vim'

" plugin that provides support for transparency colors (theme-related) in vim
Plugin 'godlygeek/csapprox'
" NERDtree plugin for filesystem left sidebar
Plugin 'scrooloose/nerdtree'

    Plugin 'mattn/emmet-vim'

    Plugin 'vim-airline/vim-airline'
    
    Plugin 'altercation/vim-colors-solarized'

    Plugin 'jacoborus/tender'

    Plugin 'yonchu/accelerated-smooth-scroll'

    "vim's plugins additional config

    set fillchars+=stl:\ ,stlnc:\ "

    autocmd vimenter * NERDTree

    set tabstop=2

    set shiftwidth=2

    set softtabstop=2

    set expandtab

    set number

    set autoindent

    set hlsearch

    set ignorecase

    set encoding=utf-8

    set laststatus=2

    set esckeys

    set timeoutlen=1000 ttimeoutlen=0

    set hidden

    syntax enable

    "set background=dark
   
    set t_Co=256

    "let g:solarized_termcolors=256

    colorscheme tender

    set scrolloff=8
    
    set backup

    set backupdir=~/.vim/backups/tmp

    set dir=~/.vim/swaps/tmp

    set ttyfast

    "set cursorline

    set directory=~/.vim/tmp

    set nobackup

    set noswapfile

    set lazyredraw

    let g:airline#extensions#tagbar#enabled = 1

    let g:airline#extensions#tagbar#flags = 'f'

    let g:airline#extensions#tabline#enabled = 1

    "vim keymap

    "erase tab

    map ,, <<

    "add tab

    map .. >>

    "remove tab for all lines in brackets

    map ,/ <%

    "add tan for all lines in brackets

    map ./ >%

    map tn :tabn<CR>

    map tp :tabp<CR>

    map tt :NERDTreeToggle<CR>

    "jump 10 lines below 

    map <C-j> 10j

    "jump 10 lines top

    map <C-k> 10k

    map <A-s> :w

    nmap <Space> i

    "toggle tagbar plugin

    map [] :TagbarToggle<CR>

    nnoremap <C-Up><C-Up> 10k

    nnoremap <C-Down><C-Down> 10j

    "go to next buffer/file/tab

    nnoremap ]] :bn<CR><Esc>

    "go to prev buffer/file/tab

    nnoremap [[ :bp<CR><Esc>

    "init explore plugin/tab

    nnoremap <C-e> :Explore<CR>

    nnoremap <C-[><C-]> <C-w><C-w>

    nnoremap <Delete> <Delete>i

    "jump to the end of the line

    nnoremap \\ A<Esc>

    nnoremap <CR> :noh<CR><CR>

    "close current buffer/tab

    nnoremap qq :bd<CR>
