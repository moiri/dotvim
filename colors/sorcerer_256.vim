" This scheme was created by CSApproxSnapshot
" on jeu., 01 mars 2012

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = "sorcerer_256"
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = "sorcerer_256"
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
  let g:toto = 1
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=187 gui=NONE guibg=#202020 guifg=#c2c2b0
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#528b8b
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#202020
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=234 ctermfg=139 gui=bold,italic,underline guibg=#202020 guifg=#8f6f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=108 gui=NONE guibg=bg guifg=#779b70
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=178 gui=NONE guibg=bg guifg=#cc8800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi htmlLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#444444
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
    CSAHi Directory term=bold cterm=NONE ctermbg=234 ctermfg=75 gui=NONE guibg=#202020 guifg=#1e90ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=bg ctermfg=210 gui=bold guibg=bg guifg=#ff6a6a
    CSAHi IncSearch term=reverse cterm=bold ctermbg=202 ctermfg=231 gui=bold guibg=#ff4500 guifg=#ffffff
    CSAHi Search term=reverse cterm=bold ctermbg=192 ctermfg=16 gui=bold guibg=#d6e770 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=234 ctermfg=72 gui=bold guibg=#202020 guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=46 ctermfg=16 gui=bold guibg=#00ff00 guifg=#000000
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=102 gui=NONE guibg=#101010 guifg=#686858
    CSAHi pythonDecorator term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#888555
    CSAHi diffOldFile term=NONE cterm=NONE ctermbg=bg ctermfg=176 gui=italic guibg=bg guifg=#da70d6
    CSAHi diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=italic guibg=bg guifg=#ffff00
    CSAHi diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=italic guibg=bg guifg=#ffa500
    CSAHi diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=201 gui=italic guibg=bg guifg=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=149 ctermfg=16 gui=NONE guibg=#b1d631 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=149 ctermfg=149 gui=NONE guibg=#b1d631 guifg=#b1d631
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=102 gui=NONE guibg=#202020 guifg=#686858
    CSAHi TabLineSel term=bold cterm=bold ctermbg=187 ctermfg=234 gui=bold guibg=#c2c2b0 guifg=#202020
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=187 ctermfg=234 gui=reverse guibg=#202020 guifg=#c2c2b0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ee00
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=144 ctermfg=16 gui=bold guibg=#808070 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=59 ctermfg=16 gui=italic guibg=#404c4c guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#404c4c guifg=#404c4c
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#528b8b
    CSAHi Visual term=reverse cterm=NONE ctermbg=109 ctermfg=16 gui=NONE guibg=#6688aa guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=234 ctermfg=214 gui=NONE guibg=#202020 guifg=#ee9a00
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=153 ctermfg=16 gui=NONE guibg=#87ceeb guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=146 gui=NONE guibg=#40403c guifg=#99aacc
    CSAHi javaScriptOpAssign term=NONE cterm=NONE ctermbg=bg ctermfg=182 gui=NONE guibg=bg guifg=#cc99cc
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlSpecialTagName term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#cd5555
    CSAHi diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=40 gui=NONE guibg=bg guifg=#00cd00
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=fg gui=NONE guibg=#1c1c1c guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#626262 guifg=fg
    CSAHi lCursor term=NONE cterm=NONE ctermbg=187 ctermfg=234 gui=NONE guibg=#c2c2b0 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#fff000
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=102 gui=italic guibg=bg guifg=#707670
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=106 gui=NONE guibg=bg guifg=#719611
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi pythonExClass term=NONE cterm=NONE ctermbg=bg ctermfg=138 gui=NONE guibg=bg guifg=#996666
    CSAHi FoldColumn term=NONE cterm=bold ctermbg=236 ctermfg=109 gui=bold guibg=#303030 guifg=#68838b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=78 ctermfg=16 gui=NONE guibg=#3cb371 guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=110 ctermfg=16 gui=NONE guibg=#4f94cd guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=131 ctermfg=16 gui=NONE guibg=#8b3626 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=153 ctermfg=16 gui=NONE guibg=#8ee5ee guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=188 ctermfg=231 gui=NONE guibg=#cdcdb4 guifg=#ffffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#ee2c2c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
  let g:toto = 2
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=230 gui=NONE guibg=#202020 guifg=#c2c2b0
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=109 gui=NONE guibg=bg guifg=#528b8b
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=146 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#202020
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=255 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=234 ctermfg=145 gui=bold,italic,underline guibg=#202020 guifg=#8f6f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#779b70
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#cc8800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi htmlLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#444444
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
    CSAHi Directory term=bold cterm=NONE ctermbg=234 ctermfg=75 gui=NONE guibg=#202020 guifg=#1e90ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=bg ctermfg=210 gui=bold guibg=bg guifg=#ff6a6a
    CSAHi IncSearch term=reverse cterm=bold ctermbg=208 ctermfg=255 gui=bold guibg=#ff4500 guifg=#ffffff
    CSAHi Search term=reverse cterm=bold ctermbg=229 ctermfg=16 gui=bold guibg=#d6e770 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=234 ctermfg=72 gui=bold guibg=#202020 guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=46 ctermfg=16 gui=bold guibg=#00ff00 guifg=#000000
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=102 gui=NONE guibg=#101010 guifg=#686858
    CSAHi pythonDecorator term=NONE cterm=NONE ctermbg=bg ctermfg=144 gui=NONE guibg=bg guifg=#888555
    CSAHi diffOldFile term=NONE cterm=NONE ctermbg=bg ctermfg=219 gui=italic guibg=bg guifg=#da70d6
    CSAHi diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=italic guibg=bg guifg=#ffff00
    CSAHi diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=220 gui=italic guibg=bg guifg=#ffa500
    CSAHi diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=201 gui=italic guibg=bg guifg=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=37 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=255 gui=NONE guibg=#444444 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=191 ctermfg=16 gui=NONE guibg=#b1d631 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=191 ctermfg=191 gui=NONE guibg=#b1d631 guifg=#b1d631
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=102 gui=NONE guibg=#202020 guifg=#686858
    CSAHi TabLineSel term=bold cterm=bold ctermbg=230 ctermfg=234 gui=bold guibg=#c2c2b0 guifg=#202020
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=230 ctermfg=234 gui=reverse guibg=#202020 guifg=#c2c2b0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ee00
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=145 ctermfg=16 gui=bold guibg=#808070 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=102 ctermfg=16 gui=italic guibg=#404c4c guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=102 ctermfg=102 gui=NONE guibg=#404c4c guifg=#404c4c
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=109 gui=bold guibg=bg guifg=#528b8b
    CSAHi Visual term=reverse cterm=NONE ctermbg=110 ctermfg=16 gui=NONE guibg=#6688aa guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=234 ctermfg=220 gui=NONE guibg=#202020 guifg=#ee9a00
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=159 ctermfg=16 gui=NONE guibg=#87ceeb guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=101 ctermfg=189 gui=NONE guibg=#40403c guifg=#99aacc
    CSAHi javaScriptOpAssign term=NONE cterm=NONE ctermbg=bg ctermfg=225 gui=NONE guibg=bg guifg=#cc99cc
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlSpecialTagName term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=210 gui=NONE guibg=bg guifg=#cd5555
    CSAHi diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=111 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=46 gui=NONE guibg=bg guifg=#00cd00
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=fg gui=NONE guibg=#1c1c1c guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#626262 guifg=fg
    CSAHi lCursor term=NONE cterm=NONE ctermbg=230 ctermfg=234 gui=NONE guibg=#c2c2b0 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#fff000
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=145 gui=italic guibg=bg guifg=#707670
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=220 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=148 gui=NONE guibg=bg guifg=#719611
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi pythonExClass term=NONE cterm=NONE ctermbg=bg ctermfg=174 gui=NONE guibg=bg guifg=#996666
    CSAHi FoldColumn term=NONE cterm=bold ctermbg=236 ctermfg=109 gui=bold guibg=#303030 guifg=#68838b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=#3cb371 guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=111 ctermfg=16 gui=NONE guibg=#4f94cd guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=131 ctermfg=16 gui=NONE guibg=#8b3626 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=159 ctermfg=16 gui=NONE guibg=#8ee5ee guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=230 ctermfg=255 gui=NONE guibg=#cdcdb4 guifg=#ffffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#ee2c2c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 256
  let g:toto = 3
    CSAHi Normal term=NONE cterm=NONE ctermbg=234 ctermfg=145 gui=NONE guibg=#202020 guifg=#c2c2b0
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=66 gui=NONE guibg=bg guifg=#528b8b
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=103 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=234 gui=NONE guibg=bg guifg=#202020
    CSAHi Error term=reverse cterm=NONE ctermbg=196 ctermfg=231 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=234 ctermfg=96 gui=bold,italic,underline guibg=#202020 guifg=#8f6f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=101 gui=NONE guibg=bg guifg=#779b70
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=172 gui=NONE guibg=bg guifg=#cc8800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi htmlLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=238 gui=NONE guibg=bg guifg=#444444
    CSAHi NonText term=bold cterm=NONE ctermbg=234 ctermfg=238 gui=NONE guibg=#202020 guifg=#444444
    CSAHi Directory term=bold cterm=NONE ctermbg=234 ctermfg=33 gui=NONE guibg=#202020 guifg=#1e90ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=bg ctermfg=203 gui=bold guibg=bg guifg=#ff6a6a
    CSAHi IncSearch term=reverse cterm=bold ctermbg=202 ctermfg=231 gui=bold guibg=#ff4500 guifg=#ffffff
    CSAHi Search term=reverse cterm=bold ctermbg=185 ctermfg=16 gui=bold guibg=#d6e770 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=234 ctermfg=29 gui=bold guibg=#202020 guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=46 ctermfg=16 gui=bold guibg=#00ff00 guifg=#000000
    CSAHi LineNr term=underline cterm=NONE ctermbg=233 ctermfg=59 gui=NONE guibg=#101010 guifg=#686858
    CSAHi pythonDecorator term=NONE cterm=NONE ctermbg=bg ctermfg=101 gui=NONE guibg=bg guifg=#888555
    CSAHi diffOldFile term=NONE cterm=NONE ctermbg=bg ctermfg=170 gui=italic guibg=bg guifg=#da70d6
    CSAHi diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=226 gui=italic guibg=bg guifg=#ffff00
    CSAHi diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=italic guibg=bg guifg=#ffa500
    CSAHi diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=201 gui=italic guibg=bg guifg=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=30 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=149 ctermfg=16 gui=NONE guibg=#b1d631 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=250 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=149 ctermfg=149 gui=NONE guibg=#b1d631 guifg=#b1d631
    CSAHi TabLine term=underline cterm=NONE ctermbg=234 ctermfg=59 gui=NONE guibg=#202020 guifg=#686858
    CSAHi TabLineSel term=bold cterm=bold ctermbg=145 ctermfg=234 gui=bold guibg=#c2c2b0 guifg=#202020
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=145 ctermfg=234 gui=reverse guibg=#202020 guifg=#c2c2b0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=236 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=#00ee00
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=101 ctermfg=16 gui=bold guibg=#808070 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=59 ctermfg=16 gui=italic guibg=#404c4c guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=59 ctermfg=59 gui=NONE guibg=#404c4c guifg=#404c4c
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=66 gui=bold guibg=bg guifg=#528b8b
    CSAHi Visual term=reverse cterm=NONE ctermbg=67 ctermfg=16 gui=NONE guibg=#6688aa guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=234 ctermfg=208 gui=NONE guibg=#202020 guifg=#ee9a00
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=116 ctermfg=16 gui=NONE guibg=#87ceeb guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=110 gui=NONE guibg=#40403c guifg=#99aacc
    CSAHi javaScriptOpAssign term=NONE cterm=NONE ctermbg=bg ctermfg=176 gui=NONE guibg=bg guifg=#cc99cc
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlSpecialTagName term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=167 gui=NONE guibg=bg guifg=#cd5555
    CSAHi diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=40 gui=NONE guibg=bg guifg=#00cd00
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=234 ctermfg=fg gui=NONE guibg=#1c1c1c guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=241 ctermfg=fg gui=NONE guibg=#626262 guifg=fg
    CSAHi lCursor term=NONE cterm=NONE ctermbg=145 ctermfg=234 gui=NONE guibg=#c2c2b0 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=16 ctermfg=226 gui=bold guibg=#000000 guifg=#fff000
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=65 gui=italic guibg=bg guifg=#707670
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=64 gui=NONE guibg=bg guifg=#719611
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi pythonExClass term=NONE cterm=NONE ctermbg=bg ctermfg=95 gui=NONE guibg=bg guifg=#996666
    CSAHi FoldColumn term=NONE cterm=bold ctermbg=236 ctermfg=66 gui=bold guibg=#303030 guifg=#68838b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=71 ctermfg=16 gui=NONE guibg=#3cb371 guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=68 ctermfg=16 gui=NONE guibg=#4f94cd guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=94 ctermfg=16 gui=NONE guibg=#8b3626 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=117 ctermfg=16 gui=NONE guibg=#8ee5ee guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=187 ctermfg=231 gui=NONE guibg=#cdcdb4 guifg=#ffffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=#ee2c2c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
elseif has("gui_running") || &t_Co == 88
  let g:toto = 4
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=85 gui=NONE guibg=#202020 guifg=#c2c2b0
    CSAHi htmlArg term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#528b8b
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#7e8aa2
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#202020
    CSAHi Error term=reverse cterm=NONE ctermbg=64 ctermfg=79 gui=NONE guibg=#ff0000 guifg=#ffffff
    CSAHi Todo term=NONE cterm=bold,underline ctermbg=80 ctermfg=37 gui=bold,italic,underline guibg=#202020 guifg=#8f6f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#779b70
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#cc8800
    CSAHi Boolean term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi htmlLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=#444444
    CSAHi NonText term=bold cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#202020 guifg=#444444
    CSAHi Directory term=bold cterm=NONE ctermbg=80 ctermfg=23 gui=NONE guibg=#202020 guifg=#1e90ff
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=bg ctermfg=69 gui=bold guibg=bg guifg=#ff6a6a
    CSAHi IncSearch term=reverse cterm=bold ctermbg=64 ctermfg=79 gui=bold guibg=#ff4500 guifg=#ffffff
    CSAHi Search term=reverse cterm=bold ctermbg=61 ctermfg=16 gui=bold guibg=#d6e770 guifg=#000000
    CSAHi MoreMsg term=bold cterm=bold ctermbg=80 ctermfg=21 gui=bold guibg=#202020 guifg=#2e8b57
    CSAHi ModeMsg term=bold cterm=bold ctermbg=28 ctermfg=16 gui=bold guibg=#00ff00 guifg=#000000
    CSAHi LineNr term=underline cterm=NONE ctermbg=16 ctermfg=37 gui=NONE guibg=#101010 guifg=#686858
    CSAHi pythonDecorator term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#888555
    CSAHi diffOldFile term=NONE cterm=NONE ctermbg=bg ctermfg=54 gui=italic guibg=bg guifg=#da70d6
    CSAHi diffNewFile term=NONE cterm=NONE ctermbg=bg ctermfg=76 gui=italic guibg=bg guifg=#ffff00
    CSAHi diffFile term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=italic guibg=bg guifg=#ffa500
    CSAHi diffLine term=NONE cterm=NONE ctermbg=bg ctermfg=67 gui=italic guibg=bg guifg=#ff00ff
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=#008b8b
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#ffffff
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=56 ctermfg=16 gui=NONE guibg=#b1d631 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=85 ctermfg=fg gui=NONE guibg=#bebebe guifg=fg
    CSAHi PmenuThumb term=NONE cterm=NONE ctermbg=56 ctermfg=56 gui=NONE guibg=#b1d631 guifg=#b1d631
    CSAHi TabLine term=underline cterm=NONE ctermbg=80 ctermfg=37 gui=NONE guibg=#202020 guifg=#686858
    CSAHi TabLineSel term=bold cterm=bold ctermbg=85 ctermfg=80 gui=bold guibg=#c2c2b0 guifg=#202020
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=85 ctermfg=80 gui=reverse guibg=#202020 guifg=#c2c2b0
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi CursorLine term=underline cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#2d2d2d guifg=fg
    CSAHi helpLeadBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi helpNormal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#faf4c6
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=#00ee00
    CSAHi StatusLine term=bold,reverse cterm=bold ctermbg=37 ctermfg=16 gui=bold guibg=#808070 guifg=#000000
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=21 ctermfg=16 gui=italic guibg=#404c4c guifg=#000000
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=21 ctermfg=21 gui=NONE guibg=#404c4c guifg=#404c4c
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=37 gui=bold guibg=bg guifg=#528b8b
    CSAHi Visual term=reverse cterm=NONE ctermbg=37 ctermfg=16 gui=NONE guibg=#6688aa guifg=#000000
    CSAHi VisualNOS term=bold,underline cterm=bold,underline ctermbg=bg ctermfg=fg gui=bold,underline guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=NONE ctermbg=80 ctermfg=68 gui=NONE guibg=#202020 guifg=#ee9a00
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=43 ctermfg=16 gui=NONE guibg=#87ceeb guifg=#000000
    CSAHi Folded term=NONE cterm=NONE ctermbg=80 ctermfg=38 gui=NONE guibg=#40403c guifg=#99aacc
    CSAHi javaScriptOpAssign term=NONE cterm=NONE ctermbg=bg ctermfg=54 gui=NONE guibg=bg guifg=#cc99cc
    CSAHi htmlTag term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlSpecialTagName term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlTagName term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi htmlEndTag term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi diffRemoved term=NONE cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#cd5555
    CSAHi diffChanged term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#4f94cd
    CSAHi diffAdded term=NONE cterm=NONE ctermbg=bg ctermfg=24 gui=NONE guibg=bg guifg=#00cd00
    CSAHi pythonException term=NONE cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=80 ctermfg=fg gui=NONE guibg=#1c1c1c guifg=fg
    CSAHi Cursor term=NONE cterm=NONE ctermbg=81 ctermfg=fg gui=NONE guibg=#626262 guifg=fg
    CSAHi lCursor term=NONE cterm=NONE ctermbg=85 ctermfg=80 gui=NONE guibg=#c2c2b0 guifg=#202020
    CSAHi MatchParen term=reverse cterm=bold ctermbg=16 ctermfg=76 gui=bold guibg=#000000 guifg=#fff000
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=82 gui=italic guibg=bg guifg=#707670
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#ff9800
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=36 gui=NONE guibg=bg guifg=#719611
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=42 gui=NONE guibg=bg guifg=#90b0d1
    CSAHi pythonExClass term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#996666
    CSAHi FoldColumn term=NONE cterm=bold ctermbg=80 ctermfg=37 gui=bold guibg=#303030 guifg=#68838b
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=25 ctermfg=16 gui=NONE guibg=#3cb371 guifg=#000000
    CSAHi DiffChange term=bold cterm=NONE ctermbg=38 ctermfg=16 gui=NONE guibg=#4f94cd guifg=#000000
    CSAHi DiffDelete term=bold cterm=NONE ctermbg=32 ctermfg=16 gui=NONE guibg=#8b3626 guifg=#000000
    CSAHi DiffText term=reverse cterm=NONE ctermbg=43 ctermfg=16 gui=NONE guibg=#8ee5ee guifg=#000000
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=58 ctermfg=79 gui=NONE guibg=#cdcdb4 guifg=#ffffff
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=#a9a9a9 guifg=#d3d3d3
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=#ee2c2c
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=#0000ff
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=#ff00ff
endif

if 1
    delcommand CSAHi
endif
