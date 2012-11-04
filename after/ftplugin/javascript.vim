nnoremap <buffer> <leader>g I// <Esc>A //<Esc>yyp0llv$hhhr-yykPjj

vnoremap <buffer> !! <Esc>'<O/*<Esc>'>o*/<Esc>
vnoremap <buffer> ?? <Esc>'<"_dd'>"_dd'<

" autocmd BufWritePost,FileWritePost *.js :silent! !ctags -R . &
