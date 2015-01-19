set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'wting/rust.vim'
Plugin 'vim-perl/vim-perl'
Plugin 'pangloss/vim-javascript'
Plugin 'fatih/vim-go'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/syntastic'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'

call vundle#end()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set mouse=a
set whichwrap+=<,>,[,]
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set visualbell
set cmdheight=2
set number
set notimeout ttimeout ttimeoutlen=200
set shiftwidth=2
set softtabstop=2
set expandtab
set tabstop=2
set cursorline
set t_Co=256
set regexpengine=1

" let g:Powerline_symbols = "fancy"

map <F8> :NERDTreeToggle<CR>
set pastetoggle=<F2>

" Highlight trailing whitespaces and delete all with <F5>
match ErrorMsg '\s\+$'
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

colorscheme wombat

" Line number color, highlight current line
highlight LineNr ctermfg=grey

autocmd Filetype python setlocal tabstop=4 softtabstop=4 shiftwidth=4 autoindent

" Syntastic Settings for Python
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
