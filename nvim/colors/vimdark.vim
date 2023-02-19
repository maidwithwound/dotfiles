" Vim color theme
"
" This file is generated, please check bin/generate.py.
"
" Name:       vim-dark
" Maintainer: Louis DeLosSantos
" License:    BSD

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vimdark'

" alpha:          000000 None
" black:          #1c1c1c 234
" black_light:    #262626 235
" grey:           #949494 246
" grey_light:     #6c6c6c 242
" grey_lightest:  #e4e4e4 254
" blue:           #0087af 031
" blue_accent:    #87afd7 110
" red:            #af5f5f 131
" red_light:      #ff0000 196
" yellow:         #ffff5f 227
" green:          #87af87 108
" orange:         #9b885c
" orange-alt:     #d7934f
" purple:         #988ACF
" cyan:           #4DC5C6

set background=dark
hi Normal       ctermbg=234  ctermfg=246 cterm=None         guibg=000000  guifg=#949494 
hi NormalFloat  ctermbg=234  ctermfg=246 cterm=None         guibg=000000  guifg=#949494 
hi Nontext      ctermbg=234  ctermfg=246 cterm=None         guibg=000000  guifg=#949494 
hi Question     ctermbg=234  ctermfg=246 cterm=Bold         guibg=#1c1c1c  guifg=#949494 gui=Bold
hi MoreMsg      ctermbg=234  ctermfg=246 cterm=Bold         guibg=#1c1c1c  guifg=#949494 gui=Bold
hi Visual       ctermbg=110  ctermfg=000 cterm=None         guibg=#87afd7  guifg=#000000 gui=None
hi Comment      ctermbg=None ctermfg=242 cterm=None         guibg=None guifg=#6c6c6c gui=None
hi Constant     ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi String       ctermbg=None ctermfg=131 cterm=None         guibg=None guifg=#af5f5f gui=None
hi Character    ctermbg=None ctermfg=031 cterm=None         guibg=None guifg=#0087af gui=None
hi Identifier   ctermbg=None ctermfg=None cterm=None        guibg=None guifg=None gui=None
hi Statement    ctermbg=None ctermfg=254 cterm=None         guibg=None guifg=#e4e4e4 gui=None
hi PreProc      ctermbg=None ctermfg=254 cterm=None         guibg=None guifg=#e4e4e4 gui=None
hi Operator     ctermbg=None ctermfg=131 cterm=None         guibg=None guifg=#af5f5f gui=None
hi Type         ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi Keyword      ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi Special      ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi Underlined   ctermbg=None ctermfg=None cterm=Underline   guibg=None guifg=None gui=Underline
hi Ignore       ctermbg=None ctermfg=None cterm=None        guibg=None guifg=None gui=None
hi Error        ctermbg=None ctermfg=196 cterm=None         guibg=None guifg=#ff0000 gui=None
hi ErrorMsg     ctermbg=131  ctermfg=246 cterm=None         guibg=#af5f5f guifg=#e4e4e4 gui=None
hi Warning      ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi WarningMsg   ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi Todo         ctermbg=None ctermfg=110 cterm=None         guibg=None guifg=#87afd7 gui=None
hi Cursor       ctermbg=242 ctermfg=254 cterm=None          guibg=#6c6c6c guifg=#e4e4e4 gui=None
hi CursorLine   ctermbg=242  ctermfg=254 cterm=None         guibg=#262626  guifg=#e4e4e4 gui=Bold
hi Directory    ctermbg=234  ctermfg=254 cterm=Underline    guibg=#1c1c1c  guifg=#e4e4e4 gui=Underline
hi VertSplit    ctermbg=None ctermfg=242 cterm=Bold         guibg=None guifg=#6c6c6c gui=Bold
hi Folded       ctermbg=None ctermfg=None cterm=None        guibg=None guifg=None gui=None
hi FoldColumn   ctermbg=None ctermfg=246 cterm=None         guibg=None guifg=#949494 gui=None
hi SignColumn   ctermbg=None ctermfg=None cterm=None        guibg=None guifg=None gui=None
hi IncSearch    ctermbg=227  ctermfg=000 cterm=BOLD         guibg=#d7934f  guifg=#ffffff gui=Bold
hi Search       ctermbg=227  ctermfg=000 cterm=BOLD         guibg=#d7934f  guifg=#ffffff gui=Bold
hi LineNr       ctermbg=None ctermfg=242 cterm=None         guibg=None guifg=#6c6c6c gui=None
hi CursorLineNr ctermbg=None ctermfg=242 cterm=Bold         guibg=None guifg=#6c6c6c gui=Bold
hi MatchParen   ctermbg=235  ctermfg=246 cterm=None         guibg=#262626  guifg=#949494 gui=None
hi Pmenu        ctermbg=235  ctermfg=254 cterm=None         guibg=#262626  guifg=#e4e4e4 gui=None
hi PmenuSel     ctermbg=110  ctermfg=235 cterm=Bold         guibg=#87afd7  guifg=#262626 gui=Bold
hi PmenuSbar    ctermbg=235  ctermfg=254 cterm=None         guibg=#262626  guifg=#e4e4e4 gui=None
hi PmenuThumb   ctermbg=110  ctermfg=254 cterm=None         guibg=#87afd7  guifg=#e4e4e4 gui=None
hi SpecialKey   ctermbg=None ctermfg=024 cterm=None         guibg=None guifg=#005f87 gui=None
hi StatusLine   ctermbg=235  ctermfg=254 cterm=Bold         guibg=#262626  guifg=#e4e44 gui=Bold
hi StatusLineNC ctermbg=242  ctermfg=235 cterm=None         guibg=#6c6c6c  guifg=#262626 gui=None
hi WildMenu     ctermbg=110  ctermfg=235 cterm=Bold         guibg=#87afd7  guifg=#262626 gui=Bold
hi TabLine      ctermbg=235  ctermfg=254 cterm=None         guibg=#262626  guifg=#e4e4e4 gui=None
hi TabLineFill  ctermbg=235  ctermfg=254 cterm=None         guibg=#262626  guifg=#e4e4e4 gui=None
hi TabLineSel   ctermbg=227  ctermfg=235 cterm=Bold         guibg=#ffffaf  guifg=#262626 gui=Bold
hi Title        ctermbg=None ctermfg=None cterm=Bold        guibg=None guifg=None gui=Bold
hi DiffAdd      ctermbg=108  ctermfg=000 cterm=None         guibg=#87af87  guifg=#000000 gui=None
hi DiffDelete   ctermbg=131  ctermfg=000 cterm=None         guibg=#af5f5f  guifg=#000000 gui=None
hi DiffChange   ctermbg=110  ctermfg=000 cterm=None         guibg=#87afd7  guifg=#000000 gui=None
hi DiffText     ctermbg=108  ctermfg=000 cterm=None         guibg=#87af87  guifg=#000000 gui=None
hi qfLineNr     ctermbg=None ctermfg=246 cterm=Bold         guibg=None guifg=#949494 gui=Bold

"golang
hi goField              ctermbg=None ctermfg=None cterm=None   guibg=None guifg=None gui=None
hi goType               ctermbg=None ctermfg=131  cterm=None   guibg=None guifg=#af5f5f gui=None
hi goSignedInts         ctermbg=None ctermfg=131  cterm=None   guibg=None guifg=#af5f5f gui=None
hi goUnsignedInts       ctermbg=None ctermfg=131  cterm=None   guibg=None guifg=#af5f5f gui=None
hi goFloats             ctermbg=None ctermfg=131  cterm=None   guibg=None guifg=#af5f5f gui=None
hi goFloats             ctermbg=None ctermfg=131  cterm=None   guibg=None guifg=#af5f5f gui=None
hi goDiagnosticError    ctermbg=None ctermfg=None  cterm=None  guibg=None guifg=None gui=None
hi goDiagnosticWarning  ctermbg=None ctermfg=None  cterm=None  guibg=None guifg=None gui=None

"javascript
hi jsObjectKey ctermbg=None ctermfg=131 cterm=None guibg=None guifg=#af5f5f gui=None

" python
hi pythonClassVar    ctermbg=None ctermfg=131 cterm=None guibg=None guifg=#af5f5f gui=None
hi pythonDottedName  ctermbg=None ctermfg=131 cterm=None guibg=None guifg=#af5f5f gui=None
hi pythonDottedName  ctermbg=None ctermfg=131 cterm=None guibg=None guifg=#af5f5f gui=None
hi pythonBuiltinFunc ctermbg=None ctermfg=131 cterm=None guibg=None guifg=#af5f5f gui=None

"c++/c
hi cppSTLios      ctermbg=None ctermfg=131 guibg=None guifg=#af5f5f
hi cCustomFunc    ctermbg=None ctermfg=131 guibg=None guifg=#af5f5f
hi cStructure     ctermbg=None ctermfg=131 guibg=None guifg=#af5f5f

hi helpExample ctermbg=None ctermfg=110 cterm=None guibg=None guifg=#87afd7 gui=None
hi helpCommand ctermbg=None ctermfg=110 cterm=None guibg=None guifg=#87afd7 gui=None

"TreeSitter
hi TSConstant ctermbg=None ctermfg=254 cterm=None guibg=None guifg=#e4e4e4 gui=None
hi TSParameter ctermbg=None ctermfg=254 cterm=None guibg=None guifg=#e4e4e4 gui=None
hi TSParameterReference ctermbg=None ctermfg=254 cterm=None guibg=None guifg=#e4e4e4 gui=None
hi TSLabel ctermbg=None ctermfg=254 cterm=None guibg=None guifg=#e4e4e4 gui=None
hi TSPunctBracket ctermbg=None  ctermfg=108 cterm=None guibg=None  guifg=#87af87 gui=None
hi TSPunctSpecial ctermbg=None  ctermfg=108 cterm=None guibg=None  guifg=#87af87 gui=None
hi TSInclude ctermbg=None ctermfg=110 cterm=None guibg=None guifg=#87afd7 gui=None

" NVIM-LSP
hi LspCodeLens ctermbg=None ctermfg=110 cterm=italic guibg=None guifg=#87afd7 gui=italic
hi LspCodeLensSeparator ctermbg=None ctermfg=242 cterm=None guibg=None guifg=#6c6c6c gui=None

" Neovim Indent-Blankline
hi IndentBlanklineChar ctermfg=235 guifg=#3a3a3a gui=nocombine
hi IndentBlanklineSpaceChar ctermfg=242 guifg=#6c6c6c gui=nocombine
hi IndentBlanklineSpaceCharBlankline ctermfg=242 guifg=#6c6c6c gui=nocombine
hi IndentBlanklineContextChar ctermfg=242 guifg=#6c6c6c gui=nocombine

" gitgutter
hi GitGutterAdd     ctermfg=022 guifg=#005f00
hi GitGutterChange  ctermfg=226 guifg=#ffff00
hi GitGutterDelete  ctermfg=131 guibg=None guifg=#af5f5f cterm=None

" gitsigns
hi GitSignsAdd     ctermfg=022 guifg=#005f00
hi GitSignsChange  ctermfg=226 guifg=#ffff00
hi GitSignsDelete  ctermfg=131 guibg=None guifg=#af5f5f cterm=None

" litee
hi LTBoolean                guifg=#0087af guibg=None
hi LTConstant               guifg=#0087af guibg=None
hi LTConstructor            guifg=#4DC5C6 guibg=None
hi LTField                  guifg=#0087af guibg=None
hi LTFunction               guifg=#988ACF guibg=None
hi LTMethod                 guifg=#0087af guibg=None
hi LTNamespace              guifg=#87af87 guibg=None
hi LTNumber                 guifg=#9b885c guibg=None
hi LTOperator               guifg=#988ACF guibg=None
hi LTParameter              guifg=#988ACF guibg=None
hi LTParameterReference     guifg=#4DC5C6 guibg=None
hi LTString                 guifg=#af5f5f guibg=None
hi LTSymbol                 guifg=#87afd7 gui=underline
hi LTSymbolDetail           ctermfg=024 cterm=italic guifg=#988ACF gui=italic
hi LTSymbolJump             ctermfg=015 ctermbg=110 cterm=italic,bold,underline   guifg=#464646 guibg=#87afd7 gui=italic,bold
hi LTSymbolJumpRefs         ctermfg=015 ctermbg=110 cterm=italic,bold,underline   guifg=#464646 guibg=#9b885c gui=italic,bold
hi LTType                   guifg=#9b885c guibg=None
hi LTURI                    guifg=#988ACF guibg=None
hi LTIndentGuide            guifg=None    guibg=None
hi LTExpandedGuide          guifg=None    guibg=None
hi LTCollapsedGuide         guifg=None    guibg=None
hi LTSelectFiletree         ctermbg=131  ctermfg=246 cterm=None guibg=#af5f5f guifg=#e4e4e4 gui=None
hi def link LTCurrentFileFiletree Visual

" My overrides: {{{
hi Normal              ctermfg=7
hi CursorLine          ctermbg=234
hi Pmenu               ctermfg=15    ctermbg=0
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=8
hi PmenuSel            ctermfg=0     ctermbg=4
hi ColorColumn         ctermbg=0
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=12    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=11    ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline
hi Whitespace          ctermfg=238
hi LineNr              ctermfg=8     ctermbg=NONE  cterm=bold
hi CursorLineNr        ctermfg=14    ctermbg=NONE     cterm=bold
hi Visual              ctermfg=0     ctermbg=5
hi IncSearch           ctermfg=0     ctermbg=13    cterm=NONE
hi Search              ctermfg=0     ctermbg=14
hi StatusLine          ctermfg=5     ctermbg=0     cterm=NONE
hi StatusLineNC        ctermfg=8     ctermbg=0     cterm=bold
hi VertSplit           ctermfg=13    ctermbg=NONE     cterm=bold
hi TabLine             ctermfg=8     ctermbg=0     cterm=NONE
hi TabLineSel          ctermfg=7     ctermbg=0
hi Folded              ctermfg=4     ctermbg=0     cterm=bold,italic
hi Conceal             ctermfg=6     ctermbg=NONE
hi Directory           ctermfg=10    ctermbg=NONE  cterm=NONE
hi Title               ctermfg=11    ctermbg=NONE  cterm=bold
hi ErrorMsg            ctermfg=9     ctermbg=NONE     cterm=bold
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

" }}}
