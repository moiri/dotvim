call pathogen#infect()        "install plugins compfortably in ~/.vim/bundle/
call pathogen#helptags()      "generate helptags for everything in 'runtimepath'

filetype plugin indent on     "detect file extension, use plugin settings

syntax on                     "use vim default syntax highlighting

runtime macros/matchit.vim    "extends '%' usage (switch if/else, xml, etc.)

"Commands for programming involving <localleader>
"================================================
"\t --> tags:
"------------
"\tt    toggle tag list

"\def   jump to definition
"\dec   jump to declaration
"\inc   jump to include file
"\doc   preview window with doc
"\typ   display type

"\\     prepend \ to the word
"\;     append ; to the line

"Command for working with latex invlolving <localleader>
"=======================================================
"\lt    open the document structure
"\ll    compile the project
"\lv    perform forward serach in pdf viewer

"Commands for everyday live involving <leader>
"=============================================
",a     Tabular: align elements by entered character

",b -> work with buffers:
"------------------------
",bb    open list of buffers
",bs    open list of buffers in a horizontal split
",bv    open list of buffers in a vertical split
",bd    close active buffer

",d     delete and move in black hole register (not 0 register)

",o -> switch from one pairing file to another (*.c <-> *.h)
"-----------------------------------------------------------
",of    Switch to the file and load it into the current window
",ol    Switch to the file and load it into the window on the right
",oL    Switch to the file and load it into a new window split on the right
",oh    Switch to the file and load it into the window on the left
",oH    Switch to the file and load it into a new window split on the left
",ok    Switch to the file and load it into the window above
",oK    Switch to the file and load it into a new window split above
",oj    Switch to the file and load it into the window below
",oJ    Switch to the file and load it into a new window split below

",r     replace selection or word and all identic strings in one text block
",R     replace selection or word and all identic strings in the file
",s     search for the word below the cursor and leave the curser there
",,     open dropdown for spell checker

""""""""""""""""""""
" GENERIC SETTINGS "
""""""""""""""""""""

"Keys
"===============================================================================
let mapleader=','               "use ',' instead of '\'
let maplocalleader = "\\"
set backspace=indent,eol,start  "config backspace key


"View, Layout
"===============================================================================
" set splitbelow                  "when split put new window below
set splitright                  "when split put new window right
set cursorline                  "show a horizontal line at the cursor position
set fileformats=unix,dos,mac
set formatoptions+=1            "wrapping, newline and ident options
set lazyredraw                  "don't redraw window while macros are executed
" set previewheight=10            "height of the preview window
"set relativenumber              "show the linenumber relative to the cursor
"                                "position
set number                      "use static line numbering
set scrolloff=4                 "minimal number of lines to keep above/below
                                "when scrolling
set virtualedit=block,onemore   "config of cursor behaviour
" set winheight=999               "set winheight
"show special chars for tabs, spaces etc. see listchars
set list
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
"set color scheme
colorscheme sorcerer
" colorscheme apprentice
"error bells
set noerrorbells
set t_vb=
set visualbell
"change split window size with +/- keys
nnoremap <silent>+ <c-w>+
nnoremap <silent>- <c-w>-

" split vertically on diff
set diffopt+=vertical

"Folding
"===============================================================================
set foldmethod=syntax
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
"folding toggle with space
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
nnoremap <silent> <Space><Space> @=(foldlevel('.')?'zA':"\<Space><Space>")<CR>
vnoremap <Space> zf

"save view when closing file and loading view when opening file
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 


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
nnoremap <silent> <Esc> :noh<CR>
"Select all words identic to the one below the cursor
nnoremap <leader>s *N

set tags=./tags,tags,./.git/tags;

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
nnoremap <silent> <C-Up> :wincmd k<CR>
nnoremap <silent> <C-Down> :wincmd j<CR>
nnoremap <silent> <C-Left> :wincmd h<CR>
nnoremap <silent> <C-Right> :wincmd l<CR>
nnoremap <silent> <C-k> :wincmd k<CR>
nnoremap <silent> <C-j> :wincmd j<CR>
nnoremap <silent> <C-h> :wincmd h<CR>
nnoremap <silent> <C-l> :wincmd l<CR>


"Content Manipulation
"===============================================================================
set nrformats-=octal            "config inc/dec function (C-a, C-x):
                                "dont inc/dec octal numbers
" set clipboard^=unnamedplus      "use the X Window clipboard
"',d' can be used instead of 'd' to move whatever is deleted into the black
"hole register (instead of the "0 register)
nnoremap <leader>d "_d
xnoremap <leader>d "_d
"allows to overwrite a word with the same word multiple times when using yiw,
"viw,p
xnoremap <leader>p "_dP
"replace word below cursor and all identic words in one text block
nnoremap <leader>r :'{,'}s/<C-r>=expand('<cword>')<CR>/
"replace selection and all identic strings in one text block
xnoremap <leader>r :<C-u>'{,'}s/<C-r>=functions#GetVisualSelection()<CR>/
"replace word below cursor and all identic words in the whole file
nnoremap <leader>R :%s/<C-r>=expand('<cword>')<CR>/
"replace selection and all identic strings in the whole file
xnoremap <leader>R :<C-u>%s/<C-r>=functions#GetVisualSelection()<CR>/

" prepend \ to a word
nnoremap <localleader>\ bi\<C-[>
" append ; to a line
nnoremap <localleader>; A;<C-[>

"Spell checker
"===============================================================================
"use ,, to open a dropdwn menu with spelling suggestions
inoremap <leader>, <C-X>s
nnoremap <leader>, ea<C-X><C-S>

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
nnoremap <leader>bd :bd<CR>



"Status/Command Line
"===============================================================================
set laststatus=2                "always show a status line"
set wildmenu                    "command line completion
set wildignore=*.swp,*.bak,*.pyc,*.class,*/.git/**/*,*/.hg/**/*,*/.svn/**/*
" set wildignorecase              "ignore case when completing file names
set wildmode=list:longest       "list all matches and complete till longest
                                "common string
set statusline=%<\ %t\ %m%r%y%w%=Lin:\ \%l\/\%L\ Col:\ \%c\ 

nnoremap <leader>p :pclose<CR>

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

"""""""""""""""""""
" CUSTOM COMMANDS "
"""""""""""""""""""
"convert file to unix file
command! ToUnix   :call functions#ToUnix()

"find a file by pattern and propagate to quickfix list
command! -nargs=1 FindFile call functions#FindFiles(<q-args>)

"increment a visual block
vnoremap <C-a> :call functions#Incr()<CR>

" setup netrw
let g:netrw_liststyle=3 " Default to tree mode
let g:netrw_list_hide= '.*\.swp,.*\.pyc'

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
"surround helps to modify surrounding elements (tags, parentheses, etc)
"https://github.com/tpope/vim-surround

"-------------------------------------------------------------------------------
"tabular helps to arrange items in tabular form (very useful for latex)
"https://github.com/godlygeek/tabular
"align elements by entered character (is applied on a block of text wo using v)
nnoremap <leader>a :Tabularize<Space>/

"-------------------------------------------------------------------------------
"ultisnips provides snippets that work together with YCM
"https://github.com/sirver/ultisnips
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/bundle/vim-snippets/UltiSnips']
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" let g:UltiSnipsUsePythonVersion = 3

"rebind <tab> in order to not interfere with YCM
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" "use <enter> to coose the snippet you want
" let g:UltiSnipsExpandTrigger = "<nop>"
" let g:ulti_expand_or_jump_res = 0
" function ExpandSnippetOrCarriageReturn()
"     let snippet = UltiSnips#ExpandSnippetOrJump()
"     if g:ulti_expand_or_jump_res > 0
"         return snippet
"     else
"         return "\<CR>"
"     endif
" endfunction
" inoremap <expr> <CR> pumvisible() ? "\<C-R>=ExpandSnippetOrCarriageReturn()\<CR>" : "\<CR>"

"-------------------------------------------------------------------------------
"YCM an autocompletion engine mostly for C languages. It also provides
"autocompletion for any other kind of text but is not intelligent
"https://github.com/Valloric/YouCompleteMe
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:ycm_use_ultisnips_completer = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/default/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_always_populate_location_list = 1
" let g:ycm_show_diagnostics_ui           = 0 "use syntastic and not ycm
set completeopt-=preview
" set completeopt=menu
" let g:ycm_add_preview_to_completeopt = 1
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_collect_identifiers_from_tags_files = 1
nnoremap <localleader>doc :YcmCompleter GetDoc<CR>
nnoremap <localleader>typ :YcmCompleter GetType<CR>
nnoremap <localleader>dec :YcmCompleter GoToDeclaration<CR>
" nnoremap <localleader>gc :YcmCompleter GoToDefinition<CR> "only works if c file is includede
nnoremap <localleader>inc :YcmCompleter GoToInclude<CR>

"-------------------------------------------------------------------------------
"Taglist provides a list of tags in a side-window
"https://github.com/vim-scripts/taglist.vim
nnoremap <localleader>tt :TlistToggle<CR>
nnoremap <localleader>def <c-]>

"-------------------------------------------------------------------------------
"Vimtex offers extensive functionnality for latex files
"https://github.com/lervag/vimtex
let g:vimtex_fold_enabled = 0
let g:vimtex_quickfix_mode = 0
" let g:vimtex_view_method = 'mupdf'
" let g:vimtex_view_method = 'zathura'
" let g:vimtex_view_method = 'evince'
" let g:vimtex_view_general_viewer = 'qpdfview'
" let g:vimtex_view_general_options = '--unique @pdf\#src:@tex:@line:@col'
" let g:vimtex_view_general_options_latexmk = '--unique'
"setings suggested by vimtex to work together with ycm
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
            \ 're!\\[A-Za-z]*cite[A-Za-z]*(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\[A-Za-z]*ref({[^}]*|range{([^,{}]*(}{)?))',
            \ 're!\\hyperref\[[^]]*',
            \ 're!\\includegraphics\*?(\[[^]]*\]){0,2}{[^}]*',
            \ 're!\\(include(only)?|input){[^}]*',
            \ 're!\\\a*(gls|Gls|GLS)(pl)?\a*(\s*\[[^]]*\]){0,2}\s*\{[^}]*',
            \ 're!\\includepdf(\s*\[[^]]*\])?\s*\{[^}]*',
            \ 're!\\includestandalone(\s*\[[^]]*\])?\s*\{[^}]*',
            \ ]

"-------------------------------------------------------------------------------
"Unimpaired gives nice standardised movment commands:
"next([)/previous(])/first([Upper)/last(]Upper)
"[b]uffer/[q]uickfix/[t]ag/[f]ile/[l]ocation
"https://github.com/tpope/vim-unimpaired
autocmd VimEnter * unmap <p
autocmd VimEnter * unmap <P
autocmd VimEnter * unmap >p
autocmd VimEnter * unmap >P

"-------------------------------------------------------------------------------
"ListToggle allows to simply toggle the quickfix list and the location list
"https://github.com/Valloric/ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

"-------------------------------------------------------------------------------
"FSwitch allows to switch between h and c files (or other combinations)
"https://github.com/Valloric/ListToggle
"key mappings
nmap <silent> <leader>of :FSHere<cr>
nmap <silent> <leader>ol :FSRight<cr>
nmap <silent> <leader>oL :FSSplitRight<cr>
nmap <silent> <leader>oh :FSLeft<cr>
nmap <silent> <leader>oH :FSSplitLeft<cr>
nmap <silent> <leader>ok :FSAbove<cr>
nmap <silent> <leader>oK :FSSplitAbove<cr>
nmap <silent> <leader>oj :FSBelow<cr>
nmap <silent> <leader>oJ :FSSplitBelow<cr>

"-------------------------------------------------------------------------------
"Bufexplorer allows to easily select an open buffer
"https://github.com/vim-scripts/bufexplorer.zip.git
"remap some default keys
nnoremap <silent><leader>bb :BufExplorer<CR>
let g:bufExplorerDefaultHelp=0
" let g:bufExplorerDetailedHelp=1
let g:bufExplorerSplitBelow=1
let g:bufExplorerSplitHorzSize=10
