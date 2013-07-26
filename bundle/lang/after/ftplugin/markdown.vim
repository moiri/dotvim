" Vim filetype plugin
" Language:		Markdown
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/html.vim ftplugin/html_*.vim ftplugin/html/*.vim

setlocal comments=fb:*,fb:-,fb:+,n:> commentstring=>\ %s
setlocal formatoptions+=tcqln
setlocal formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\|^[-*+]\\s\\+

vnoremap <buffer> +b c**<C-r>"**<Esc>
vnoremap <buffer> +i c**<C-r>"**<Esc>
vnoremap <buffer> +c c`<C-r>"`<Esc>
vnoremap <buffer> <kPlus>b c**<C-r>"**<Esc>
vnoremap <buffer> <kPlus>i c**<C-r>"**<Esc>
vnoremap <buffer> <kPlus>c c`<C-r>"`<Esc>

let b:undo_ftplugin .= "|setl cms< com< fo<"

" vim:set sw=2:
