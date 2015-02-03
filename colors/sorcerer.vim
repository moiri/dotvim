" 'sorcerer.vim' -- Vim color scheme.
" Maintainer:   Jeet Sukumaran
" Based on 'Mustang' by Henrique C. Alves (hcarvalhoalves@gmail.com),

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "sorcerer"

hi Normal       ctermfg=LightGrey
hi ColorColumn  ctermbg=Black
hi Cursor       ctermfg=Black
hi CursorLine   ctermbg=none ctermfg=none cterm=underline
hi DiffAdd      ctermfg=Black ctermbg=Green
hi DiffChange   ctermfg=Black ctermbg=Blue
hi DiffDelete   ctermfg=Black ctermbg=DarkRed
hi DiffText     ctermfg=Black ctermbg=Cyan
hi Directory    ctermfg=DarkCyan ctermbg=none
hi ErrorMsg     ctermfg=Red ctermbg=none
hi FoldColumn   ctermfg=DarkMagenta ctermbg=Black
hi Folded       ctermfg=Magenta ctermbg=DarkMagenta
hi IncSearch    ctermfg=Black ctermbg=DarkGreen cterm=none
hi LineNr       ctermbg=Black ctermfg=Blue cterm=none
hi MatchParen   ctermfg=DarkYellow ctermbg=Black cterm=none
hi ModeMsg      ctermfg=Black ctermbg=DarkGreen cterm=none
hi MoreMsg      ctermfg=DarkGreen cterm=none
hi NonText      ctermfg=DarkGrey

hi Pmenu        ctermfg=White ctermbg=Black
hi PmenuSel     ctermfg=Black ctermbg=DarkGreen
hi PmenuThumb   ctermfg=DarkGreen ctermbg=DarkGreen


"hi Question     
hi Search       ctermfg=Black ctermbg=DarkGreen cterm=none
"hi SignColumn   
hi SpecialKey   ctermfg=DarkGrey ctermbg=none cterm=none
hi SpellBad     ctermfg=1 ctermbg=none cterm=undercurl
hi SpellCap     ctermfg=3 ctermbg=none cterm=undercurl
hi SpellLocal   ctermfg=2 ctermbg=none cterm=undercurl
hi SpellRare    ctermfg=5 ctermbg=none cterm=undercurl
hi StatusLine   ctermfg=Black ctermbg=DarkCyan cterm=none
hi StatusLineNC ctermfg=Black ctermbg=DarkBlue cterm=none
hi VertSplit    ctermfg=DarkBlue ctermbg=DarkBlue cterm=none
hi TabLine      ctermbg=Blue ctermfg=Black cterm=none
hi TabLineFill  ctermbg=Blue ctermfg=DarkBlue
hi TabLineSel   ctermbg=Cyan ctermfg=Black cterm=none
"hi Title        
hi Visual       ctermbg=DarkYellow ctermfg=Black cterm=none
hi WarningMsg   ctermfg=DarkYellow
hi WildMenu     ctermfg=White ctermbg=DarkBlue

"  Syntax highlighting
hi Comment      ctermfg=DarkMagenta
hi Boolean      ctermfg=DarkYellow
hi String       ctermfg=DarkGreen
hi Identifier   ctermfg=Blue
hi Function     ctermfg=Yellow
hi Type         ctermfg=Blue
hi Statement    ctermfg=DarkCyan
hi Keyword      ctermfg=DarkCyan
hi Constant     ctermfg=Red
hi Number       ctermfg=Magenta
hi Special      ctermfg=DarkGreen
hi PreProc      ctermfg=DarkCyan
hi Todo         ctermfg=Magenta ctermbg=Black cterm=none

" Diff
hi diffOldFile      ctermfg=Magenta   ctermbg=NONE      cterm=italic
hi diffNewFile      ctermfg=Yellow   ctermbg=NONE      cterm=italic
hi diffFile         ctermfg=DarkYellow   ctermbg=NONE      cterm=italic
hi diffLine         ctermfg=Magenta   ctermbg=NONE      cterm=italic
hi link             diffOnly        Constant
hi link             diffIdentical   Constant
hi link             diffDiffer      Constant
hi link             diffBDiffer     Constant
hi link             diffIsA         Constant
hi link             diffNoEOL       Constant
hi link             diffCommon      Constant
hi diffRemoved      ctermfg=Magenta   ctermbg=NONE      cterm=NONE
hi diffChanged      ctermfg=Cyan   ctermbg=NONE      cterm=NONE
hi diffAdded        ctermfg=Green   ctermbg=NONE      cterm=NONE
hi link             diffSubname     diffLine
hi link             diffComment     Comment

" Python
hi pythonException  ctermfg=Cyan ctermbg=NONE cterm=NONE
hi pythonExClass    ctermfg=DarkMagenta ctermbg=NONE cterm=NONE
hi pythonDecorator  ctermfg=DarkYellow ctermbg=NONE cterm=NONE
hi link pythonDecoratorFunction pythonDecorator

" JavaScript
" hi javaScriptGlobalObjects  ctermfg=#729926 ctermfg=DarkGreen
" hi javaScriptFunction       ctermfg=#ccbb33 ctermfg=DarkYellow
" hi javaScriptFuncName       ctermfg=#993333 ctermfg=Red
hi javaScriptOpAssign       ctermfg=Magenta ctermfg=Magenta

" HTML
hi htmlTag       ctermfg=Cyan cterm=NONE ctermfg=DarkCyan
hi htmlSpecialTagName ctermfg=Cyan cterm=NONE ctermfg=DarkCyan
hi htmlTagName  ctermfg=Cyan cterm=NONE  ctermfg=DarkCyan
hi htmlEndTag    ctermfg=Cyan cterm=NONE ctermfg=DarkCyan
hi htmlArg       ctermfg=DarkCyan cterm=NONE ctermfg=Blue
hi htmlLink      cterm=NONE
hi htmlTitle     ctermfg=Cyan

" CSS
hi cssDefinition  ctermfg=Blue

"indicate 80 char area by marking the oevrlapping text
hi OverLength   ctermfg=Magenta ctermbg=DarkMagenta
match OverLength /\%81v.\+/
