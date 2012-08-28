" 'sorcerer_16.vim' -- Vim color scheme.
" Maintainer:   Jeet Sukumaran
" Based on 'Mustang' by Henrique C. Alves (hcarvalhoalves@gmail.com),

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "sorcerer_16"

hi Normal       ctermfg=LightGrey
hi ColorColumn  ctermbg=Black
hi Cursor       ctermfg=Black
hi CursorLine   ctermbg=none cterm=underline
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
"hi SpellBad     
"hi SpellCap     
"hi SpellLocal   
"hi SpellRare    
hi StatusLine   ctermfg=Black ctermbg=DarkCyan cterm=none
hi StatusLineNC ctermfg=Black ctermbg=DarkBlue cterm=NONE
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
hi diffOldFile      guifg=#da70d6   guibg=NONE      gui=italic
hi diffNewFile      guifg=#ffff00   guibg=NONE      gui=italic
hi diffFile         guifg=#ffa500   guibg=NONE      gui=italic
hi diffLine         guifg=#ff00ff   guibg=NONE      gui=italic
hi link             diffOnly        Constant
hi link             diffIdentical   Constant
hi link             diffDiffer      Constant
hi link             diffBDiffer     Constant
hi link             diffIsA         Constant
hi link             diffNoEOL       Constant
hi link             diffCommon      Constant
hi diffRemoved      guifg=#cd5555   guibg=NONE      gui=NONE
hi diffChanged      guifg=#4f94cd   guibg=NONE      gui=NONE
hi diffAdded        guifg=#00cd00   guibg=NONE      gui=NONE
hi link             diffSubname     diffLine
hi link             diffComment     Comment

" Python
hi pythonException  guifg=#90b0d1 guibg=NONE gui=NONE
hi pythonExClass    guifg=#996666 guibg=NONE gui=NONE
hi pythonDecorator  guifg=#888555 guibg=NONE gui=NONE
hi link pythonDecoratorFunction pythonDecorator

" JavaScript
" hi javaScriptGlobalObjects  guifg=#729926 ctermfg=DarkGreen
" hi javaScriptFunction       guifg=#ccbb33 ctermfg=DarkYellow
" hi javaScriptFuncName       guifg=#993333 ctermfg=Red
hi javaScriptOpAssign       guifg=#cc99cc ctermfg=Magenta

" HTML
hi htmlTag       guifg=#90b0d1 gui=NONE ctermfg=DarkCyan
hi htmlSpecialTagName guifg=#90b0d1 gui=NONE ctermfg=DarkCyan
hi htmlTagName  guifg=#90b0d1 gui=NONE  ctermfg=DarkCyan
hi htmlEndTag    guifg=#90b0d1 gui=NONE ctermfg=DarkCyan
hi htmlArg       guifg=#7e8aa2 gui=NONE ctermfg=Blue
hi htmlLink      cterm=NONE
hi htmlTitle     ctermfg=Cyan

" CSS
hi cssDefinition  ctermfg=Blue
