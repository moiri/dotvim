""""""""""""""
" THE BASICS "
""""""""""""""

filetype on
filetype indent on
filetype plugin on
syntax on

silent! runtime macros/matchit.vim

if !has("gui_running")

  nnoremap <Esc>A <up>
  nnoremap <Esc>B <down>
  nnoremap <Esc>C <right>
  nnoremap <Esc>D <left>
  inoremap <Esc>A <up>
  inoremap <Esc>B <down>
  inoremap <Esc>C <right>
  inoremap <Esc>D <left>

endif

let mapleader=','

inoremap <leader>, <C-x><C-o>
inoremap <leader>: <C-x><C-f>
inoremap <leader>= <C-x><C-l>

nnoremap <leader>d "_d
vnoremap <leader>d "_d

vnoremap <leader>p "_dP

nnoremap / /\v

nnoremap Y y$

inoremap <Esc> <Esc>:w<CR>

vnoremap > >gv
vnoremap < <gv

inoremap <C-Return> <CR><CR><C-o>k<Tab>

nnoremap k      gk
nnoremap j      gj
nnoremap <up>   gk
nnoremap <down> gj

nnoremap <leader>ls :ls<CR>:sb<Space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

inoremap <leader>; <C-o>m`<C-o>A;<C-o>``
nnoremap <leader>; A;<Esc>

nnoremap <leader>k      :m-2<CR>==
nnoremap <leader>j      :m+<CR>==
vnoremap <leader>k      :m-2<CR>gv=gv
vnoremap <leader>j      :m'>+<CR>gv=gv
nnoremap <leader><Up>   :m-2<CR>==
nnoremap <leader><Down> :m+<CR>==
vnoremap <leader><Up>   :m-2<CR>gv=gv
vnoremap <leader><Down> :m'>+<CR>gv=gv

nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

nnoremap <leader>ss :w !sudo tee %<CR>

" necessary
set tabstop=2
set expandtab
set shiftwidth=2
set shiftround
set backspace=indent,eol,start
set autoindent
set copyindent
set ignorecase
set smartcase
set incsearch
set gdefault
set fileformats="unix,dos,mac"
set laststatus=2
set termencoding=utf-8
set encoding=utf-8
set hidden
set switchbuf=useopen,usetab
set wildmenu
set wildmode=list:full
" not that necessary
set clipboard=unnamed
set cursorline
set splitright
set splitbelow
set noerrorbells
set visualbell
set t_vb=
set foldenable
set foldmethod=indent
set foldlevelstart=99
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set shell=bash\ -i
set nrformats-=octal
set scrolloff=4
set mouse=a
set formatoptions+=1
set lazyredraw
set cmdheight=1
set previewheight=4
set history=1000
set undolevels=1000
set noswapfile
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/*,*/.hg/*,*/.svn/*
set tags=./tags,tags;$HOME
set cscopetag
set list
set listchars=
set listchars+=tab:»\ 
set listchars+=extends:› 
set listchars+=precedes:‹ 
set listchars+=nbsp:· 
set listchars+=trail:· 
set completeopt+=preview
set autochdir
set winheight=999
