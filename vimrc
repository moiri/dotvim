call pathogen#infect()        "install plugins compfortably in ~/.vim/bundle/
call pathogen#helptags()      "generate helptags for everything in 'runtimepath'

filetype plugin indent on     "detect file extension, use plugin settings

syntax on                     "use vim default syntax highlighting

runtime macros/matchit.vim    "extends '%' usage (switch if/else, xml, etc.)


""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""

"Keys
"===============================================================================
let mapleader=','               "use ',' instead of '\'
let maplocalleader = "-"
set backspace=indent,eol,start  "config backspace key


"View, Layout
"===============================================================================
set splitbelow                  "when split put new window below
set splitright                  "when split put new window right
set cursorline                  "show a horizontal line at the cursor position
set fileformats=unix,dos,mac
set formatoptions+=1            "wrapping, newline and ident options
set lazyredraw                  "don't redraw window while macros are executed
set previewheight=4             "height of the preview window
"set relativenumber              "show the linenumber relative to the cursor
"                                "position
set number                      "use static line numbering
set scrolloff=4                 "minimal number of lines to keep above/below
                                "when scrolling
set virtualedit=block,onemore   "config of cursor behaviour
set winheight=999               "set winheight
"show special chars for tabs, spaces etc. see listchars
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
"set color scheme
colorscheme sorcerer
"colorscheme apprentice
"error bells
set noerrorbells
set t_vb=
set visualbell

"Folding
"===============================================================================
set foldmethod=syntax
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
"folding toggle with space
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf


"Indentation
"===============================================================================
set autoindent                  "copy the ident from previous line
set expandtab                   "use spaces insetad of tabs
set shiftround                  "round ident to a multiple of shiftwith
set shiftwidth=4
set smarttab                    "BS deletes a shiftwith worth of space
set tabstop=4
"enhance identation feeling (more intuitive)
xnoremap > >gv
xnoremap < <gv
nnoremap > >>
nnoremap < <<


"Search
"===============================================================================
set incsearch                   "highligt search matches while typing
set gdefault                    "by default g flag is on (all matches of a line
                                "are substituted instead of one)
set ignorecase                  "ignore case in search patterns
set smartcase                   "overwrite ignorecase if search pattern contains
                                "uppercase letters
set hlsearch                    "highlight all search matches
"nnoremap / /\v                  "set search to very magic by adding \v to every
"                                "search
"Press Esc to turn off highlighting and clear any message already displayed:
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
"Select all words identic to the one below the cursor
nnoremap <leader>s *N
"Select all strings identic to the selection
xnoremap <leader>s <Esc>:let @/ = functions#GetVisualSelection()<CR>


"Navigation
"===============================================================================
""usage of mouse in different modes
"set mouse=a
"map arrow key to use for navigation
nnoremap <Esc>A <up>
nnoremap <Esc>B <down>
nnoremap <Esc>C <right>
nnoremap <Esc>D <left>
inoremap <Esc>A <up>
inoremap <Esc>B <down>
inoremap <Esc>C <right>
inoremap <Esc>D <left>
"move down/up always a visible line (not a phpysical line, e.g. in a fold)
nnoremap j      gj
nnoremap k      gk
nnoremap <Down> gj
nnoremap <up>   gk
"use end and home buttons in command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
"easily switch between windows
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>


"Content Manipulation
"===============================================================================
set nrformats-=octal            "config inc/dec function (C-a, C-x):
                                "dont inc/dec octal numbers
set clipboard^=unnamedplus      "use the X Window clipboard
"',d' can be used instead of 'd' to move whatever is deleted into the black
"hole register (instead of the "0 register)
nnoremap <leader>d "_d
xnoremap <leader>d "_d
"allows to overwrite a word with the same word multiple times when using yiw,
"viw,p
xnoremap <leader>p "_dP
"switch lines or move a line up/down (when switching with a blank line)
nnoremap <leader>k      : move-2<CR>==
nnoremap <leader>j      : move+<CR>==
nnoremap <leader><Up>   : move-2<CR>==
nnoremap <leader><Down> : move+<CR>==
xnoremap <leader>k      : move-2<CR>gv=gv
xnoremap <leader>j      : move'>+<CR>gv=gv
xnoremap <leader><Up>   : move-2<CR>gv=gv
xnoremap <leader><Down> : move'>+<CR>gv=gv
"switch two words next to one another
nnoremap <leader>h        "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader>l        "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
nnoremap <leader><Left>   "_yiw?\v\w+\_W+%#<CR>:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o><C-l>
nnoremap <leader><Right>  "_yiw:s/\v(%#\w+)(\_W+)(\w+)/\3\2\1/<CR><C-o>/\v\w+\_W+<CR><C-l>
"align elements by entered character (is applied on a block of text wo using v)
"requires tabular plugin!
nnoremap <leader>a :Tabularize<Space>/
"add an empty line above and below the lign on which the cursor is
nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>
"replace word below cursor and all identic words in one text block
nnoremap <leader>r :'{,'}s/<C-r>=expand('<cword>')<CR>/
"replace selection and all identic strings in one text block
xnoremap <leader>r :<C-u>'{,'}s/<C-r>=functions#GetVisualSelection()<CR>/
"replace word below cursor and all identic words in the whole file
nnoremap <leader>R :%s/<C-r>=expand('<cword>')<CR>/
"replace selection and all identic strings in the whole file
xnoremap <leader>R :<C-u>%s/<C-r>=functions#GetVisualSelection()<CR>/
"replace prior selected string in newly selected block
xmap <leader>q :s/<C-r>=@/<CR>/
"delete word under corsor and enter insert mode
nmap <leader>x *Ncgn
nmap <leader>X #NcgN
"delete selection and enter insert mode
xmap <leader>x <leader>scgn
xmap <leader>X <leader>scgN


"Spell checker
"===============================================================================
"use ,, to open a dropdwn menu with spelling suggestions
inoremap <leader>, <C-X>s
nnoremap <leader>, ea<C-X><C-S>
"on enter replace word and go back to normal mode. This also happens with
"autocompletion, so maybe it needs to be turned off again
"inoremap <expr> <CR> pumvisible() ? "\<C-y><Esc>" : "\<CR>"

"File Manipulation
"===============================================================================
"encoding
set encoding=utf-8
set termencoding=utf-8
"set noswapfile                  "do not use swapfile as buffer (everything in
"                                "memory)
set hidden                      "hide buffers
set switchbuf=useopen,usetab    "buffer switching behaviour
"list buffers and prepare to open a new one in a split window (horizontal split)
nnoremap gs :buffers<CR>:vert belowright sb<Space>
nnoremap gb :buffers<CR>:b<Space>
nnoremap gn :bn<CR>
nnoremap gp :bp<CR>
nnoremap gd :bd<CR>



"Status/Command Line
"===============================================================================
set laststatus=2                "always show a status line"
set wildmenu                    "command line completion
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignorecase              "ignore case when completing file and directory
                                "names
set wildmode=list:longest       "list all matches and complete till longest
                                "common string
set statusline=%<\ %t\ %m%r%y%w%=Lin:\ \%l\/\%L\ Col:\ \%c\ 

"""""""""""""""""""
" CUSTOM COMMANDS "
"""""""""""""""""""
command! Tagit    :call functions#Tagit()
command! Bombit   :call functions#Bombit()
command! ToUnix   :call functions#ToUnix()
command! SynStack :call functions#SynStack()

" increment visual block
function! Incr()
    let a = line('.') - line("'<")
    let c = virtcol("'<")
    if a > 0
        execute 'normal! '.c.'|'.a."\<C-a>"
    endif
    normal `<
endfunction
vnoremap <C-a> :call Incr()<CR>

" setup netrw
let g:netrw_liststyle=3 " Default to tree mode

"""""""""""""""""""
" PLUGIN SETTINGS "
"""""""""""""""""""
"-------------------------------------------------------------------------------
"commentary is used to comment and uncomment lines (use gcc on lines gc on
"visual selection)
"https://github.com/tpope/vim-commentary

"-------------------------------------------------------------------------------
"indent-object is used to select text blocks based on identation (useful with
"python)
"https://github.com/michaeljsmith/vim-indent-object

"-------------------------------------------------------------------------------
"pipe2eval allwos to use script to generate content. Looks very nice but needs
"some shortcuts defined in here...
"https://github.com/zweifisch/pipe2eval

"-------------------------------------------------------------------------------
"snippets that work together with ultisnips
"https://github.com/honza/vim-snippets

"-------------------------------------------------------------------------------
"surround helps to modify surrounding elements (tags, parentheses, etc)
"https://github.com/tpope/vim-surround

"-------------------------------------------------------------------------------
"tern is an atocompletor for javascript. It works together with YCM
"https://github.com/marijnh/tern_for_vim

"-------------------------------------------------------------------------------
"tabular helps to arrange items in tabular form (very useful for latex)
"https://github.com/godlygeek/tabular

"-------------------------------------------------------------------------------
"ultisnips provides snippets that work together with YCM
"https://github.com/sirver/ultisnips
"rebind <tab> in order to not interfere with YCM
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"-------------------------------------------------------------------------------
"YCM an autocompletion engine mostly for C languages. It also provides
"autocompletion for any other kind of text but is not intelligent
"https://github.com/Valloric/YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/default/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
" let g:ycm_show_diagnostics_ui           = 0 "use syntastic and not ycm
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

"-------------------------------------------------------------------------------
"Vimtex offers extensive functionnality for latex files
"https://github.com/lervag/vimtex
let g:vimtex_fold_enabled = 0
let g:vimtex_quickfix_mode = 0
" let g:vimtex_view_method = 'mupdf'
let g:vimtex_view_method = 'zathura'
" let g:vimtex_view_general_viewer = 'qpdfview'
" let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
" let g:vimtex_view_general_options_latexmk = '--unique'
"setings suggested by vimtex to work together with ycm
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*,?)*',
            \ 're!\\includegraphics([^]]*])?{[^}]*',
            \ 're!\\(include|input){[^}]*'
            \ ]
