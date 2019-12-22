syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
syntax match jVarIdentifier	"\v<[a-zA-Z_][a-zA-Z0-9_]*>"
syntax match jVarFunIdentifier	"[a-zA-Z_][a-zA-Z0-9_]*\s*\ze("

hi javaScriptIdentifier ctermfg=blue
hi jVarIdentifier ctermfg=yellow
hi jVarFunIdentifier ctermfg=darkyellow
hi MatchParen ctermbg=darkcyan cterm=none ctermfg=none
hi Error ctermbg=darkmagenta cterm=none ctermfg=none
hi LineNr ctermfg=white ctermbg=blue cterm=none
hi CursorLine ctermbg=red cterm=none
hi CursorLineNr ctermbg=blue ctermfg=darkcyan cterm=none
hi Statusline ctermbg=black ctermfg=white cterm=reverse
hi StatuslineNC ctermbg=black ctermfg=darkgrey cterm=reverse
hi VertSplit ctermbg=white ctermfg=white
hi Operator ctermbg=none ctermfg=darkcyan
hi Comment ctermfg=darkgrey
hi javaScriptValue ctermfg=green
hi String ctermfg=green
hi Function ctermfg=darkyellow
hi Conditional ctermfg=blue
hi Repeat ctermfg=blue
hi Label ctermfg=darkmagenta
hi Operator ctermfg=darkmagenta
hi Statement ctermfg=lightred
hi Keyword ctermfg=lightred
hi Exception ctermfg=lightgreen
hi Todo ctermfg=blue ctermbg=none cterm=bold
hi Type ctermfg=green ctermbg=none cterm=bold
hi _Operator ctermfg=darkgrey ctermbg=None
