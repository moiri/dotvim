xnoremap <buffer> ?? <Esc>'<yyP"_C<!--<Esc>'>yyp"_C--><Esc>
xnoremap <buffer> !! <Esc>'<"_dd'>"_dd'<

nnoremap <buffer> <leader>& :call functions#Entities()<CR>
nnoremap <buffer> <leader>é :call functions#ReverseEntities()<CR>
xnoremap <buffer> <leader>& :call functions#Entities()<CR>
xnoremap <buffer> <leader>é :call functions#ReverseEntities()<CR>

nnoremap <buffer> <leader>< /<\w*\(\s\\|>\)<CR>
nnoremap <buffer> <leader>> ?<\w*\(\s\\|>\)<CR>

nnoremap <buffer> cia /\v"[ >/]<CR>vF=Bc
nnoremap <buffer> dia /\v"[ >/]<CR>vF=Bd
nnoremap <buffer> yia /\v"[ >/]<CR>vF=By
nnoremap <buffer> via /\v"[ >/]<CR>vF=B
nnoremap <buffer> caa /\v"[ >/]<CR>vF=Bhc
nnoremap <buffer> daa /\v"[ >/]<CR>vF=Bhd
nnoremap <buffer> yaa /\v"[ >/]<CR>vF=Bhy
nnoremap <buffer> vaa /\v"[ >/]<CR>vF=Bh

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
