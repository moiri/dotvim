""""""""""""""""""""
" WORK IN PROGRESS "
""""""""""""""""""""

" looks for the top and bottom lines
" at the current indentation level
" returns a range suitable for use in the commandline
fun! IndentRange()
  let s:startline   = line('.')
  let s:startcol    = col('.')
  let s:startindent = indent('.')

  while indent('.') == s:startindent
    normal! k
  endw
  normal! j
  let s:topline = line('.')

  while indent('.') == s:startindent
    normal! j
  endw
  normal! k
  let s:bottomline = line('.')

  call cursor(s:startline, s:startcol)

  return s:topline . "," . s:bottomline
endf

vnoremap & "*y<Esc>:<c-u><c-r>=IndentRange()<cr>s/<c-r>=substitute(escape(@*, '\/.*$^~[]'), "\n", '\\n', "g")<cr>/
nnoremap & :<c-r>=IndentRange()<cr>s/<c-r>=expand('<cword>')<cr>/

" number text object
" à nettoyer
" nnoremap <leader>n  /\v\d+<CR>
" nnoremap <leader>N  ?\v\d+<CR>
" nnoremap <leader>n :<c-u>call <SID>NumberTextObject(3)<cr>
" nnoremap <leader>N :<c-u>call <SID>NumberTextObject(4)<cr>
" onoremap N         :<c-u>call <SID>NumberTextObject(4)<cr>
" xnoremap N         :<c-u>call <SID>NumberTextObject(4)<cr>
" onoremap n         :<c-u>call <SID>NumberTextObject(3)<cr>
" xnoremap n         :<c-u>call <SID>NumberTextObject(3)<cr>
" onoremap N         :<c-u>call <SID>NumberTextObject(2)<cr>
" xnoremap N         :<c-u>call <SID>NumberTextObject(2)<cr>
" onoremap n         :<c-u>call <SID>NumberTextObject(1)<cr>
" xnoremap n         :<c-u>call <SID>NumberTextObject(1)<cr>
" onoremap an        :<c-u>call <SID>NumberTextObject(0)<cr>
" xnoremap an        :<c-u>call <SID>NumberTextObject(0)<cr>
" onoremap in        :<c-u>call <SID>NumberTextObject(0)<cr>
" xnoremap in        :<c-u>call <SID>NumberTextObject(0)<cr>

" on veut pouvoir :
" - sauter au dessus de non-nombres jusqu'au prochin nombre vers
"   l'avant et vers l'arriere
" - <action> jusqu'au prochain nombre
" - <action> jusqu'au nombre precedent
" + <action> sur le nombre courant

" voici 3 oeufs, 12 carottes et 1000 litres de lait. 
" Fabriquez-moi 162 châpeaux.

" dir == 0 : both directions (an, in)
" dir == 1 : to the right
" dir == 2 : to the left
function! NumberTextObject(dir)

  if a:dir == 0
    normal! v
    while getline('.')[col('.')] =~# '\v[0-9]'
      normal! l
    endwhile

    normal! o

    while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
      normal! h
    endwhile

  elseif a:dir == 1
    normal! v
    while getline('.')[col('.')] =~# '\v[0-9]'
      normal! l
    endwhile

  elseif a:dir == 2
    normal! v
    while col('.') > 1 && getline('.')[col('.') - 2] =~# '\v[0-9]'
      normal! h
    endwhile

  elseif a:dir == 3
    normal! v
    exec '/\v\d+'
    " exec 'normal! v/\v\d+'

  elseif a:dir == 4
    exec 'normal! v?\v\d+'

  endif
  " jusqu'au prochain groupe de chiffres       /\v\d+
  " jusqu'au precedent groupe de chiffre       ?\v\d+
  " jusqu'à la fin du groupe de chiffre actuel /\v\d\ze\D
  " jusqu'au début du groupe de chiffre actuel ?\v\D\zs\d

endfunction
