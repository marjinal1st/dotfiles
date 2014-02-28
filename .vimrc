set nocompatible
filetype indent plugin on
syntax on
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
map <F8> :NERDTreeToggle<CR>

" Highlight trailing whitespaces and delete all with <F5>
match ErrorMsg '\s\+$'
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Line number color, highlight current line
highlight LineNr ctermfg=grey

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"filetype off

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
