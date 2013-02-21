silent! call pathogen#infect()
silent! call pathogen#helptags()

filetype plugin indent on

syntax on

source ~/.vim/helpers/functions.vim

silent! runtime macros/matchit.vim

""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""

" minimal
set autochdir
set backspace=indent,eol,start
set foldenable
set hidden
set incsearch
set laststatus=2
set switchbuf=useopen,usetab
set tags=./tags,tags;/
set wildmenu

" better
set autoindent
set expandtab
set shiftround
set shiftwidth=2
set smarttab
set tabstop=2

set gdefault
set ignorecase
set smartcase

set encoding=utf-8
set termencoding=utf-8

set wildmode=list:full

set statusline=%<\ %t\ %m%r%y%w%=Col:\ \%c\ Lin:\ \%l\/\%L\ 

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set foldlevelstart=99
set foldmethod=indent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

set noerrorbells
set t_vb=
set visualbell

set splitbelow
set splitright

set clipboard^=unnamed
set cmdheight=1
set cursorline
set fileformats="unix,dos,mac"
set formatoptions+=1
set lazyredraw
set mouse=a
set noswapfile
set nrformats-=octal
set previewheight=4
set relativenumber
set scrolloff=4
set shellcmdflag=-ic
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set winheight=999

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')
  let macvim_skip_colorscheme = 1
  autocmd! FocusLost * :wa
  autocmd! GUIEnter * set vb t_vb=

  colorscheme sorcerer

  set guioptions-=T

  set lines=40
  set columns=140

  if os == 'Darwin' || os == 'Mac'
    set guifont=Inconsolata-g:h12
    set fuoptions=maxvert,maxhorz
  elseif os == 'Linux'
    set guifont=Inconsolata-g\ Medium\ 10
    set guioptions-=m
  endif
else
  if &term == 'screen'
    set t_Co=256
  endif

  if &t_Co >= 256
    colorscheme sorcerer
  elseif &t_Co < 256
    colorscheme sorcerer_16
  endif

  nnoremap <Esc>A <up>
  nnoremap <Esc>B <down>
  nnoremap <Esc>C <right>
  nnoremap <Esc>D <left>
  inoremap <Esc>A <up>
  inoremap <Esc>B <down>
  inoremap <Esc>C <right>
  inoremap <Esc>D <left>
endif

"""""""""""""""""""
" CUSTOM MAPPINGS "
"""""""""""""""""""

let mapleader=','

inoremap <leader>, <C-x><C-o>
inoremap <leader>: <C-x><C-f>
inoremap <leader>= <C-x><C-l>

nnoremap <leader>d "_d
vnoremap <leader>d "_d

vnoremap <leader>p "_dP

nnoremap / /\v

nnoremap Y y$

vnoremap > >gv
vnoremap < <gv

nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <up>   gk

inoremap <C-Return> <CR><CR><C-o>k<Tab>

nnoremap gb :buffers<CR>:sb<Space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

inoremap <leader>; <C-o>m`<C-o>A;<C-o>``
nnoremap <leader>; A;<Esc>

nnoremap <leader>k      :m-2<CR>==
nnoremap <leader>j      :m+<CR>==
nnoremap <leader><Up>   :m-2<CR>==
nnoremap <leader><Down> :m+<CR>==
vnoremap <leader>k      :m-2<CR>gv=gv
vnoremap <leader>j      :m'>+<CR>gv=gv
vnoremap <leader><Up>   :m-2<CR>gv=gv
vnoremap <leader><Down> :m'>+<CR>gv=gv

nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

nnoremap <leader>ss :w !sudo tee %<CR>

nnoremap <leader>a :Tabularize<Space>/

nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>

nnoremap <leader>] :tjump /<c-r>=expand('<cword>')<cr><cr>
nnoremap <leader>} :ptag /<c-r>=expand('<cword>')<cr><cr>

vnoremap & "*y<Esc>:<c-u>'{,'}s/<c-r>=substitute(escape(@*, '\/.*$^~[]'), "\n", '\\n', "g")<cr>/
nnoremap & :'{,'}s/<c-r>=expand('<cword>')<cr>/

autocmd FileType vim                nnoremap <leader>g I" <Esc>A "<Esc>yyp0lv$hhr"yykPjj
autocmd FileType python,ruby,sh,zsh nnoremap <leader>g I# <Esc>A #<Esc>yyp0lv$hhr-yykPjj

let pairs = [ ".", ":", ",", ";", "<bar>", "/", "<bslash>", "*" ]
for key in pairs
  execute "nnoremap ci".key." T".key."ct".key
  execute "nnoremap di".key." T".key."dt".key
  execute "nnoremap yi".key." T".key."yt".key
  execute "nnoremap vi".key." T".key."vt".key
  execute "nnoremap ca".key." F".key."cf".key
  execute "nnoremap da".key." F".key."df".key
  execute "nnoremap ya".key." F".key."yf".key
  execute "nnoremap va".key." F".key."vf".key
endfor

autocmd InsertLeave * if &modified && expand('%') != '' | write | endif

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""

let g:snippets_dir = '~/.vim/snippets/'

let g:netrw_winsize   = '999'
let g:netrw_banner    = 0
let g:netrw_keepdir   = 0
let g:netrw_liststyle = 4

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurWD<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
let g:ctrlp_working_path_mode   = 2
let g:ctrlp_jump_to_buffer      = 2
let g:ctrlp_extensions          = ['tag','line']
let g:ctrlp_mruf_max            = 25
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename         = 1
let g:ctrlp_open_new_file       = 'r'
let g:ctrlp_open_multiple_files = '3hjr'
let g:ctrlp_dotfiles            = 0
let g:ctrlp_buftag_types        = {
  \ 'css'        : '--language-force=css --css-types=citm',
  \ 'javascript' : '--language-force=javascript --javascript-types=fv'
  \ }

let delimitMate_expand_cr    = 1
let delimitMate_expand_space = 1
let delimitMate_excluded_ft  = "html"

let g:syntastic_check_on_open   = 0
let g:syntastic_enable_balloons = 0
let g:syntastic_auto_jump       = 1
let g:syntastic_auto_loc_list   = 1
let g:syntastic_enable_signs    = 1
let g:syntastic_mode_map        = {
  \ 'mode': 'active',
  \ 'active_filetypes': ['javascript'],
  \ 'passive_filetypes':['css','python','html','php']
  \ }

let g:easytags_auto_highlight = 0
let g:easytags_dynamic_files  = 1
let g:easytags_by_filetype    = '~/.vimtagsft'

let g:notes_directory   = '~/Dropbox/nv'
let g:notes_suffix      = '.txt'
let g:notes_indexscript = '~/.vim/bundle/notes/misc/notes/search-notes.py'
let g:notes_indexfile   = '~/.notes.db'
