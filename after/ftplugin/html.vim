vnoremap <buffer> ?? <Esc>'<O<!--<Esc>'>o--><Esc>
vnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>& :call Entities()<CR>
nnoremap <buffer> <leader>é :call ReverseEntities()<CR>
vnoremap <buffer> <leader>& :call Entities()<CR>
vnoremap <buffer> <leader>é :call ReverseEntities()<CR>

nnoremap <leader>< /<\w*\(\s\\|>\)<CR>
nnoremap <leader>> ?<\w*\(\s\\|>\)<CR>

let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

if has('gui_running')
  if os == 'Darwin' || os == 'Mac'
    nnoremap <buffer> <F12>f :exe ':silent !open -a firefox %'<CR>
    nnoremap <buffer> <F12>c :exe ':silent !open -a "google chrome" %'<CR>
    nnoremap <buffer> <F12>o :exe ':silent !open -a opera %'<CR>
    nnoremap <buffer> <F12>s :exe ':silent !open -a safari %'<CR>
  elseif os == 'Linux'
    nnoremap <buffer> <F12>f :exe ':silent !firefox % &'<CR>
    nnoremap <buffer> <F12>c :exe ':silent !chromium-browser % &'<CR>
    nnoremap <buffer> <F12>o :exe ':silent !opera % &'<CR>
  endif
endif
