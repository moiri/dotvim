" Vim color file Tetrisity
"
" Author: MARTIN Damien
" Copyright: GNU/GPL 3+

set background=dark
hi clear
if exists("syntax_on")
	syntax reset
endif
set t_Co=256
let colors_name = "tetrisity"

" Code elements
hi Normal	    guifg=#666666    ctermfg=242    guibg=#1a1a1a    ctermbg=234       gui=none    cterm=none
hi Comment	    guifg=#646464    ctermfg=237    guibg=#000000    ctermbg=231       gui=bold    cterm=none
hi Constant	    guifg=#9fe732    ctermfg=247    guibg=#141414    ctermbg=234       gui=bold    cterm=bold
hi Function	    guifg=#e35c02    ctermfg=254    gui=underline    cterm=underline
hi Identifier	guifg=#c4c4c4    ctermfg=251    gui=none         cterm=none
hi Number	    guifg=#f7273f    ctermfg=196    gui=none         cterm=none
hi PreProc	    guifg=#63c710    ctermfg=87     gui=none         cterm=none
hi Statement	guifg=#ff6baa    ctermfg=160    gui=none         cterm=none
hi Special	    guifg=#666666    ctermfg=242    gui=none         cterm=none
hi SpecialKey	guifg=#9acd32    ctermfg=247    gui=none         cterm=none
hi String	    guifg=#9fe732    ctermfg=247    guibg=#141414    ctermbg=234       gui=bold    cterm=bold
hi StorageClass	guifg=#ff7700    ctermfg=208    gui=none         cterm=none
hi Title	    guifg=#666666    ctermfg=242    guibg=#292929    ctermbg=234       gui=none    cterm=none
hi Todo	        guifg=#fffefc    ctermfg=226    guibg=#f7273f    cterm=none
hi Type	        guifg=#ff7700    ctermfg=208    gui=none         cterm=none
hi Underlined	guifg=#666666    ctermfg=242    gui=underline    cterm=underline

" GUI
hi Cursor	    guibg=#0f9bd7    ctermbg=232    guifg=#ffffff    ctermfg=231       gui=none    cterm=none
hi CursorLine	guifg=#ffffff    ctermfg=231    guibg=#404040    ctermbg=237       gui=none    cterm=none
hi ColorColumn	guifg=#ffffff    ctermfg=231    guibg=#140a0a    ctermbg=234       gui=none    cterm=none
hi Directory	guifg=#ff7700    ctermfg=208    gui=none         cterm=none
hi Folded	    guibg=#0f0f0f    ctermbg=232    guifg=#5c5c5c    ctermfg=52        gui=none    cterm=none
hi LineNr	    guifg=#302f30    ctermfg=237    guibg=#1a1a1a    ctermbg=234       gui=bold    cterm=bold
hi MatchParen	guifg=#a4e9eb    ctermfg=248    guibg=#00698f    ctermbg=27        gui=bold    cterm=bold
hi NonText	    guibg=#000000    ctermbg=231    guifg=#666666    ctermfg=242       gui=none    cterm=none
hi StatusLine	guibg=#c2bfa5    ctermbg=07     guifg=#000000    ctermfg=231       gui=none    cterm=none
hi StatusLineNC	guibg=#c2bfa5    ctermbg=07     guifg=#777777    ctermfg=231       gui=none    cterm=none
hi VertSplit	guibg=#c2bfa5     ctermbg=07    guifg=#777777    ctermfg=231       gui=none    cterm=none
hi Visual	    guifg=#ffffff    ctermfg=231    guibg=#0f9bd7    ctermbg=200       gui=none    cterm=none
hi FoldColumn	guifg=#302f30    ctermfg=237    guibg=#1a1a1a    ctermbg=234       gui=bold    cterm=bold

" Diff colors
"hi DiffText gui=NONE guifg=#ffffcd guibg=#4a2a4a
"hi DiffChange gui=NONE guifg=#ffffcd guibg=#306b8f
"hi DiffDelete gui=NONE guifg=#ffffcd guibg=#6d3030
"hi DiffAdd gui=NONE guifg=#ffffcd guibg=#306d30
