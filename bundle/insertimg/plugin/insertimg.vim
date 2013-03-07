" Version 1.3
" Script create :IMG command, whitch insert HTML IMG tag
" with fill atributes width and height.
"
" It's need _identify_ utility from ImageMagic!
"
" (c) Petr Mach <gsl@seznam.cz>, 2003
" http://iglu.cz/wraith/
"
" Call it without parameter for file browser for selecting image.
"
" ver1.0 - 12.02.2003: HTML_loadImg()
" ver1.1 - 13.02.2003: bugfix by Patrick Mairif moon@sumbalum.de 
"                      (path=1 => path=a:1)
" ver1.2 - 16.02.2003: big improvements
"                      rename HTML_loadImg() to HTML_insertImg()
"                      and fix insertet tag for XHTML compatibility
"                      create HTML_insertHref()
"                      create Absolute2Relative() for:
"                      HTML_insert*() make path relative for 
"                      files in up directory
" ver1.3 - 04.07.2012: Added CSS_insertBg()
" var1.4 - 06.03.2013: Removed ImageMagick dependancy
"                      we use less, now, ;-)

function! GetImgInfo(path)
  return split(substitute(system('less "' . a:path . '" | cat'), '.* \(\d*x\d*\).*', '\1', ''), 'x')
endfunction

function! Absolute2Relative(path)
  let pat = a:path
  let cur = getcwd() . '/'
  let lPat = strlen(pat)
  let lCur = strlen(cur)
  let i = 0
  let beg = 0
  while(i < lPat && i < lCur)
    if(pat[i] == cur[i])
      if(cur[i] == '/')
        let beg = i + 1
      endif
      let i = i + 1
      continue
    else
      break
    endif
  endwhile
  let rel = ''
  while(i < lCur)
    if(cur[i] == '/')
      let rel = rel . '../'
    endif
    let i = i + 1
  endwhile
  return rel.strpart(pat, beg)
endfunction

function! HTML_insertHref(...)
  if(a:0 > 0)
    let path = a:1
  else
    if(has("browse"))
      let path = browse('', 'Get file for <a href="">', '.', '')
    else
      echo "Your VIM doesn't support the :browse command, insert file path manualy."
      return
    endif
  endif
  if(path[0] == '/')
    let path = Absolute2Relative(path)
  endif
  let old_x = @x
  let @x = '<a href="'.path.'">'.path.'</a>'
  normal "xp==$4hT>vt<
  let @x = old_x
endfunction
command! -nargs=? -complete=file HREF call HTML_insertHref(<f-args>)

function! HTML_insertImg(...)
  if(a:0 > 0)
    let path = a:1
  else
    if(has("browse"))
      let path = browse('', 'Get image file for <img>', '.', '')
    else
      echo "Your VIM doesn't support the :browse command, insert file path manualy."
      return
    endif
  endif
  let the_WH = GetImgInfo(path)
  if(path[0] == '/')
    let path = Absolute2Relative(path)
  endif
  let old_x = @x
  let @x = '<img src="' . path . '" width="' . the_WH[0] . '" height="' . the_WH[1] . '" alt="" />'
  normal "xp==$3h
  let @x = old_x
  startinsert
endfunction
command! -nargs=? -complete=file IMG call HTML_insertImg(<f-args>)

function! CSS_insertBg(...)
  if(a:0 > 0)
    let path = a:1
  else
    if(has("browse"))
      let path = browse('', 'Get image file for background-image', '.', '')
    else
      echo "Your VIM doesn't support the :browse command, insert file path manualy."
      return
    endif
  endif
  let the_WH = GetImgInfo(path)
  if(path[0] == '/')
    let path = Absolute2Relative(path)
  endif
  let old_x = @x
  let @x = "background: transparent url(" . path . ") no-repeat scroll top left;\nwidth: " . the_WH[0] . "px;\nheight: " . the_WH[1] . "px;"
  normal "xp3==
  let@x = old_x
endfunction
command! -nargs=? -complete=file BG silent call CSS_insertBg(<f-args>)
