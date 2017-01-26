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
" plugin that provides support for transparency colors (theme-related) in vim
Plugin 'godlygeek/csapprox'
" plugin that provides quick closing HTML tags
Plugin 'docunext/closetag.vim'
" NERDtree plugin for filesystem left sidebar
Plugin 'scrooloose/nerdtree'
" plugin that provides fancy infobar at the bottom of the vim
Plugin 'vim-airline/vim-airline'
" tender color scheme for vim
Plugin 'jacoborus/tender'
" plugin that provides better scrolling experience in vim
Plugin 'yonchu/accelerated-smooth-scroll'


"vim's plugins additional config


" fix for airline transparent characters ("^^^^")
set fillchars+=stl:\ ,stlnc:\ "
" launch NERDtree plugin on vim start
autocmd vimenter * NERDTree
" set tab sizing 
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" display line numbers
set number
" use auto indentation
set autoindent
" highlight search results
set hlsearch
" set search case to insensitive
set ignorecase
" set encoding
set encoding=utf-8
" enable status line in vim airline
set laststatus=2
" extra way to exit insert mode
set esckeys
" remove the delay of switching modes after hit Esc key
set timeoutlen=1000 ttimeoutlen=0
" buffer-related fix for saved/not saved files
set hidden
" enable syntax highlight
syntax enable
" set vim color mode to 256 - it solves couple problems with vim color schemes   
set t_Co=256
" use tender colorscheme command
colorscheme tender
" this keeps cursor almost always in the middle of the vim screen
set scrolloff=20
" fix for slow scroll in large files
set ttyfast
" add current line highlight (may cause scroll lag)
set cursorline
" set temp directory
set directory=~/.vim/tmp
" set backup off
set nobackup
" set swap off
set noswapfile
" fix for slow redraw
set lazyredraw
" airline bottom information bar additional configuration
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tagbar#flags = 'f'
let g:airline#extensions#tabline#enabled = 1


" vim custom keymap

    
" erase tab
map ,, <<
" add tab
map .. >>
" remove tab for all lines in brackets
map ,/ <%
" add tab for all lines in brackets
map ./ >%
" toggle NERDtree on double tap "T"
map tt :NERDTreeToggle<CR>
" jump 10 lines below 
map <C-j> 10j
" jump 10 lines top
map <C-k> 10k
" tap space to enter insert mode
nmap <Space> i
" toggle right tagbar plugin
map [] :TagbarToggle<CR>
" double tap CTRL + Up to jump 10 lines up
nnoremap <C-Up><C-Up> 10k
" double tap CTRL + Down to jump 10 lines below
nnoremap <C-Down><C-Down> 10j
" go to next buffer/file/tab
nnoremap ]] :bn<CR><Esc>
" go to prev buffer/file/tab
nnoremap [[ :bp<CR><Esc>
" enter next vim sub-window    
nnoremap <C-[><C-]> <C-w><C-w>
" hit Del button to delete character and enter insert mode
nnoremap <Delete> <Delete>i
" hit Enter key to clear search results highlights
nnoremap <CR> :noh<CR><CR>
"close current buffer/tab
nnoremap qq :bd<CR>
