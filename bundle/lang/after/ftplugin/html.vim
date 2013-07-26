vnoremap <buffer> ?? <Esc>'<yyP"_C<!--<Esc>'>yyp"_C--><Esc>
vnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>& :call Entities()<CR>
nnoremap <buffer> <leader>é :call ReverseEntities()<CR>
vnoremap <buffer> <leader>& :call Entities()<CR>
vnoremap <buffer> <leader>é :call ReverseEntities()<CR>

nnoremap <buffer> <leader>< /<\w*\(\s\\|>\)<CR>
nnoremap <buffer> <leader>> ?<\w*\(\s\\|>\)<CR>

nnoremap <buffer> cia /\v"[ >/]<cr>vF=Bc
nnoremap <buffer> dia /\v"[ >/]<cr>vF=Bd
nnoremap <buffer> yia /\v"[ >/]<cr>vF=By
nnoremap <buffer> via /\v"[ >/]<cr>vF=B
nnoremap <buffer> caa /\v"[ >/]<cr>vF=Bhc
nnoremap <buffer> daa /\v"[ >/]<cr>vF=Bhd
nnoremap <buffer> yaa /\v"[ >/]<cr>vF=Bhy
nnoremap <buffer> vaa /\v"[ >/]<cr>vF=Bh

let b:match_words='<:>,<\@<=\([^/][^ \t>]*\)[^>]*\%(>\|$\):<\@<=/\1>'

setlocal indentkeys-=*<Return>

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