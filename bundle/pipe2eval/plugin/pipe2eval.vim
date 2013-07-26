" https://github.com/zweifisch/pipe2eval
command! -nargs=+ Pipe2eval call Pipe2eval(<f-args>)

function! Pipe2eval(lang)
  execute "xnoremap <buffer> <space> :!pipe2eval ". a:lang . "<CR>"

endfunction

autocmd FileType * call Pipe2eval(&filetype)
