syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
syntax match pyVarIdentifier	"\v<[a-zA-Z_][a-zA-Z0-9_]*>"
syntax match pyPreIdentifier	"\v<[A-Z_][A-Z0-9_]*>"
syntax match pyVarFunIdentifier	"[a-zA-Z_][a-zA-Z0-9_]*\s*\ze("
syntax match pyMacFunIdentifier	"[A-Z_][A-Z0-9_]*\s*\ze("

hi MatchParen ctermbg=none cterm=none ctermfg=green
hi Error ctermbg=none cterm=none ctermfg=none
hi LineNr ctermfg=white ctermbg=blue cterm=none
hi CursorLine ctermbg=red cterm=none
hi CursorLineNr ctermbg=blue ctermfg=darkcyan cterm=none
hi Statusline ctermbg=black ctermfg=white cterm=reverse
hi StatuslineNC ctermbg=black ctermfg=darkgrey cterm=reverse
hi VertSplit ctermbg=green ctermfg=green
hi cOperator ctermbg=none ctermfg=darkcyan
hi Comment ctermfg=darkgrey
hi Constant ctermfg=green
hi Function ctermfg=darkyellow
hi Conditional ctermfg=blue
hi Repeat ctermfg=blue
hi Label ctermfg=darkmagenta
hi Operator ctermfg=darkcyan
hi Statement ctermfg=lightred
hi Exception ctermfg=lightgreen
hi PreProc ctermfg=lightred
hi cDefine ctermfg=lightred
hi pyVarIdentifier ctermfg=yellow
hi pyPreIdentifier ctermfg=lightred
hi pyVarFunIdentifier ctermfg=darkyellow
hi pyMacFunIdentifier ctermfg=darkmagenta
hi Todo ctermfg=blue ctermbg=none cterm=bold
hi Type ctermfg=green ctermbg=none cterm=bold
hi StorageClass ctermfg=blue ctermbg=none cterm=bold
hi Structure ctermfg=darkmagenta ctermbg=none cterm=bold
hi Typedef ctermfg=darkmagenta ctermbg=none cterm=bold
hi _Operator ctermfg=darkgrey ctermbg=None
