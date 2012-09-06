filetype off

silent! call pathogen#infect()
silent! call pathogen#helptags()

filetype on

"""""""""""""""""""""""""
" GENERAL CONFIGURATION "
"""""""""""""""""""""""""

let os=substitute(system('uname'), '\n', '', '')

if has('gui_running')

  autocmd! FocusLost * :wa
  autocmd! GUIEnter * set vb t_vb=

  " colorscheme zazen "pour voir
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

    colorscheme sorcerer_256

  elseif &t_Co < 256

    colorscheme sorcerer_16

  endif

  call SetCursorStyle(os)

endif

"""""""""""""""""""
" CUSTOM MAPPINGS "
"""""""""""""""""""

nnoremap <leader>a :Tabularize<Space>/

nnoremap <leader><Space><Space> O<C-o>j<C-o>o<C-o>k<Esc>

nnoremap <leader>== yyPv$r=jyypv$r=
nnoremap <leader>** yyPv$r*jyypv$r*
nnoremap <leader>=  yypv$r=
nnoremap <leader>-  yypv$r-
nnoremap <leader>^  yypv$r^
nnoremap <leader>"  yypv$r"

autocmd FileType vim                nnoremap <leader>g I" <Esc>A "<Esc>yyp0lv$hhr"yykPjj
autocmd FileType python,ruby,sh,zsh nnoremap <leader>g I# <Esc>A #<Esc>yyp0lv$hhr-yykPjj

autocmd FileType qf                 set winheight=8

""""""""""""""""""""""""
" PLUGIN CONFIGURATION "
""""""""""""""""""""""""

let g:snippets_dir='~/.vim/snippets/'

let g:netrw_winsize='999'
let g:netrw_banner=0

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPBufTag<CR>
nnoremap <leader>T :CtrlPTag<CR>
command! CtrlPLine call ctrlp#init(ctrlp#line#id())
nnoremap <leader>/ :CtrlPLine<CR>
let g:ctrlp_working_path_mode=2
let g:ctrlp_jump_to_buffer=2
let g:ctrlp_extensions=['tag','line']
let g:ctrlp_mruf_max=25
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_by_filename=1
let g:ctrlp_open_new_file='r'
let g:ctrlp_open_multiple_files='3hjr'
let g:ctrlp_dotfiles=0

let delimitMate_expand_cr=1
let delimitMate_expand_space=1

let g:acp_behaviorSnipmateLength=-1
let g:acp_completeoptPreview=1

" let g:acp_enableAtStartup = 0
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_underbar_completion = 1
" let g:neocomplcache_min_syntax_length = 3
" let g:neocomplcache_enable_auto_select = 1
" let g:neocomplcache_lock_buffer_name_pattern = '\.html,\.aspx'

let g:syntastic_check_on_open=0
let g:syntastic_enable_balloons=0
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_mode_map={ 'mode': 'active',
                         \ 'active_filetypes': [],
                         \ 'passive_filetypes': ['html','php'] }

""""""""""""""""""
" THE STATUSLINE "
""""""""""""""""""

set statusline=%<\        " begins with whitespace
set statusline+=%t        " filename
set statusline+=\         " whitespace
set statusline+=%m        " modified
set statusline+=%r        " read-only
set statusline+=%y        " filetype
set statusline+=%w        " preview
set statusline+=%=        " split
set statusline+=[\%l\/\%L " line: line number of total
set statusline+=-         " whitespace
set statusline+=\%c]      " col: column number
set statusline+=\         " ends with whitespace

