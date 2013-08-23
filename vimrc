call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on

syntax on

runtime macros/matchit.vim

""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""

" minimal
set backspace=indent,eol,start
set hidden
set incsearch
set laststatus=2
set switchbuf=useopen,usetab
set tags=./tags;,tags;
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

set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignorecase
set wildmode=list:full

set statusline=%<\ %t\ %m%r%y%w%=Lin:\ \%l\/\%L\ Col:\ \%c\ 

set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

set foldmethod=indent
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

set noerrorbells
set t_vb=
set visualbell

set splitbelow
set splitright

set completeopt+=longest
set cursorline
set fileformats=unix,dos,mac
set formatoptions+=1
set lazyredraw
set mouse=a
set noswapfile
set nrformats-=octal
set previewheight=4
set relativenumber
set scrolloff=4
set virtualedit=block
set winheight=999

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')
  augroup GUI
    autocmd!
    autocmd! FocusLost * call functions#AutoSave()
    autocmd! GUIEnter * set vb t_vb=
  augroup END

  colorscheme sorcerer

  set guioptions-=T

  set lines=40
  set columns=140

  if os == 'Darwin' || os == 'Mac'
    set guifont=Inconsolata-g:h13
    set fuoptions=maxvert,maxhorz
    set clipboard^=unnamed

  elseif os == 'Linux'
    set guifont=Inconsolata-g\ Medium\ 11
    set guioptions-=m
    set clipboard^=unnamedplus

  endif

else
  if &t_Co >= 256
    colorscheme sorcerer

  elseif &t_Co < 256
    colorscheme sorcerer_16

  endif

  if os == 'Darwin' || os == 'Mac'
    set clipboard^=unnamed

  elseif os == 'Linux'
    set clipboard^=unnamedplus

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
xnoremap <leader>d "_d

xnoremap <leader>p "_dP

nnoremap / /\v

nnoremap Y y$

xnoremap > >gv
xnoremap < <gv
nnoremap > >>
nnoremap < <<

nnoremap j      gj
nnoremap k      gk
nnoremap <Down> gj
nnoremap <up>   gk

nnoremap gb :buffers<CR>:sbuffer<Space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

nnoremap <leader>k      :move-2<CR>==
nnoremap <leader>j      :move+<CR>==
nnoremap <leader><Up>   :move-2<CR>==
nnoremap <leader><Down> :move+<CR>==
xnoremap <leader>k      :move-2<CR>gv=gv
xnoremap <leader>j      :move'>+<CR>gv=gv
xnoremap <leader><Up>   :move-2<CR>gv=gv
xnoremap <leader><Down> :move'>+<CR>gv=gv

nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

nnoremap <leader>a :Tabularize<Space>/

nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>

" EXPERIMENTAL!

nnoremap <leader>r :'{,'}s/<C-r>=expand('<cword>')<CR>/
nnoremap <leader>R :%s/<C-r>=expand('<cword>')<CR>/

xnoremap <leader>r :<C-u>'{,'}s/<C-r>=functions#GetVisualSelection()<CR>/
xnoremap <leader>R :<C-u>%s/<C-r>=functions#GetVisualSelection()<CR>/

nnoremap <leader>s *N
xnoremap <leader>s <Esc>:let @/ = functions#GetVisualSelection()<CR>

xmap <leader>q :s/<C-r>=@/<CR>/

nmap <leader>x *Ncgn
nmap <leader>X #NcgN
xmap <leader>x <leader>scgn
xmap <leader>X <leader>scgN

nnoremap <leader>n :cnext<CR>zv
nnoremap <leader>p :cprevious<CR>zv

nnoremap <leader>vp :execute "w !vpaste ft=" . &ft<CR>
xnoremap <leader>vp <Esc>:execute "'<,'>w !vpaste ft=" . &ft<CR>
nnoremap <leader>v: :let @+ = @:<CR>

for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '%' ]
  execute 'xnoremap i' . char . ' :<C-u>silent!normal!T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-u>silent!normal!F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

inoremap <expr> <CR> functions#Expander()

augroup Default
  autocmd!

  autocmd FileType vim                nnoremap <leader>g I" <Esc>A "<Esc>yyp0lv$hhr"yykPjj
  autocmd FileType python,ruby,sh,zsh nnoremap <leader>g I# <Esc>A #<Esc>yyp0lv$hhr-yykPjj

  autocmd InsertLeave * call functions#AutoSave()

augroup END

"""""""""""""""""""
" CUSTOM COMMANDS "
"""""""""""""""""""

command! Tagit    :call functions#Tagit()
command! Bombit   :call functions#Bombit()

command! ToUnix   :call functions#ToUnix()

command! SynStack :call functions#SynStack()

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""

let g:snippets_dir = '~/.vim/snippets/'

let g:netrw_winsize   = '999'
let g:netrw_banner    = 0
let g:netrw_keepdir   = 0
let g:netrw_liststyle = 3

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>F :CtrlPCurFile<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMixed<CR>
nnoremap <leader>M :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>T :CtrlPBufTag<CR>
nnoremap <leader>N :CtrlP ~/Dropbox/nv/<CR>
let g:ctrlp_extensions          = ['tag']
let g:ctrlp_mruf_max            = 25
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_by_filename         = 1
let g:ctrlp_open_new_file       = 'r'
let g:ctrlp_open_multiple_files = '3hjr'
let g:ctrlp_root_markers        = ['tags']
let g:ctrlp_buftag_types        = {
  \ 'css'        : '--language-force=css --css-types=citm',
  \ 'javascript' : '--language-force=javascript --javascript-types=fv',
  \ 'haxe'       : '--language-force=haxe --haxe-types=fvpcit'
  \ }

let g:syntastic_check_on_open       = 0
let g:syntastic_enable_balloons     = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_auto_jump           = 1
let g:syntastic_auto_loc_list       = 1
let g:syntastic_enable_signs        = 1
let g:syntastic_mode_map            = {
  \ 'mode'              : 'active',
  \ 'active_filetypes'  : ['javascript'],
  \ 'passive_filetypes' : ['css', 'python', 'html', 'php']
  \ }
