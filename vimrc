silent! call pathogen#infect()
silent! call pathogen#helptags()

filetype plugin indent on

syntax on

source ~/.vim/helpers/functions.vim

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
set tags=./tags,tags
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
set winheight=999

"""""""""""""""""""""""""""""""""
" ENVIRONMENT-SPECIFIC SETTINGS "
"""""""""""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')
  autocmd! FocusLost * call AutoSave()
  autocmd! GUIEnter * set vb t_vb=

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

nnoremap j      gj
nnoremap k      gk
nnoremap <Down> gj
nnoremap <up>   gk

nnoremap gb :buffers<CR>:sb<Space>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

inoremap <leader>;          <C-o>m`<C-o>A;<C-o>``
nnoremap <silent> <leader>; :s/$/;<CR>

nnoremap <leader>k      :m-2<CR>==
nnoremap <leader>j      :m+<CR>==
nnoremap <leader><Up>   :m-2<CR>==
nnoremap <leader><Down> :m+<CR>==
xnoremap <leader>k      :m-2<CR>gv=gv
xnoremap <leader>j      :m'>+<CR>gv=gv
xnoremap <leader><Up>   :m-2<CR>gv=gv
xnoremap <leader><Down> :m'>+<CR>gv=gv

nnoremap <leader>h       "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l       "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>  "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right> "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>

nnoremap <leader>a :Tabularize<Space>/

nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>

" EXPERIMENTAL!
nmap <leader>s *N
xnoremap <leader>s "*y<Esc>:let @/ = substitute(escape(@*, '\/.*$^~[]'), "\n", '\\n', "g") <bar>echo ' '<cr>
nnoremap <leader>r :'{,'}s/<c-r>=expand('<cword>')<cr>/
xnoremap <leader>r :s/<c-r>=@/<cr>/
" nmap <leader>o *Ncgn
" nmap <leader>O #NcgN
nnoremap <leader>o /\<<C-r>=expand('<cWORD>')<CR>\><CR>Ncgn
nnoremap <leader>O ?\<<C-r>=expand('<cWORD>')<CR>\><CR>NcgN

nnoremap <leader>n :cnext<CR>zv
nnoremap <leader>p :cprevious<CR>zv

nnoremap <leader>vp :execute "w !vpaste ft=" . &ft<CR>
xnoremap <leader>vp <ESC>:execute "'<,'>w !vpaste ft=" . &ft<CR>
nnoremap <leader>v: :let @+ = @:<CR>

for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+' ]
  execute 'xnoremap i' . char . ' :<C-U>silent!normal!T' . char . 'vt' . char . '<CR>'
  execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
  execute 'xnoremap a' . char . ' :<C-U>silent!normal!F' . char . 'vf' . char . '<CR>'
  execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

inoremap <expr> <CR> Expander()

autocmd FileType vim                nnoremap <leader>g I" <Esc>A "<Esc>yyp0lv$hhr"yykPjj
autocmd FileType python,ruby,sh,zsh nnoremap <leader>g I# <Esc>A #<Esc>yyp0lv$hhr-yykPjj

autocmd InsertLeave * call AutoSave()

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
