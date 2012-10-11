vnoremap !! <Esc>'<O<!--<Esc>'>o--><Esc>
vnoremap ?? <Esc>'<"_dd'>"_dd'<

nnoremap <leader>& :call Entities()<CR>
nnoremap <leader>é :call ReverseEntities()<CR>
vnoremap <leader>& :call Entities()<CR>
vnoremap <leader>é :call ReverseEntities()<CR>

nnoremap <F9> :call JumpToCSSDefinition()<CR>

nnoremap <leader>< /<\w*\(\s\\|>\)<CR>
nnoremap <leader>> ?<\w*\(\s\\|>\)<CR>

let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

if has('gui_running')

  if os == 'Darwin' || os == 'Mac'

    nnoremap <F12>f :exe ':silent !open -a firefox %'<CR>
    nnoremap <F12>c :exe ':silent !open -a "google chrome" %'<CR>
    nnoremap <F12>o :exe ':silent !open -a opera %'<CR>
    nnoremap <F12>s :exe ':silent !open -a safari %'<CR>

  elseif os == 'Linux'

    nnoremap <F12>f :exe ':silent !firefox % &'<CR>
    nnoremap <F12>c :exe ':silent !chromium-browser % &'<CR>
    nnoremap <F12>o :exe ':silent !opera % &'<CR>

  endif

endif
