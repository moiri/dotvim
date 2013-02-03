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

vnoremap <buffer> +b <Esc>`>a**<Esc>`<i**<Esc>
vnoremap <buffer> +i <Esc>`>a*<Esc>`<i*<Esc>
vnoremap <buffer> +c <Esc>`>a`<Esc>`<i`<Esc>

let b:undo_ftplugin .= "|setl cms< com< fo<"

" vim:set sw=2:
