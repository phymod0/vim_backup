syntax match _Operator "[-+&|<>=!\/~.,;:*%&^?()\[\]{}]"
syntax match cVarIdentifier	"\v<[a-zA-Z_][a-zA-Z0-9_]*>"
syntax match cPreIdentifier	"\v<[A-Z_][A-Z0-9_]*>"
syntax match cVarFunIdentifier	"[a-zA-Z_][a-zA-Z0-9_]*\s*\ze("
syntax match cMacFunIdentifier	"[A-Z_][A-Z0-9_]*\s*\ze("

if exists("c_comment_strings")
  " A comment can contain cString, cCharacter and cNumber.
  " But a "*/" inside a cString in a cComment DOES end the comment!  So we
  " need to use a special type of cString: cCommentString, which also ends on
  " "*/", and sees a "*" at the start of the line as comment again.
  " Unfortunately this doesn't very well work for // type of comments :-(
  syn match	cCommentSkip	contained "^\s*\*\($\|\s\+\)"
  syn region cCommentString	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end=+\*/+me=s-1 contains=cSpecial,cCommentSkip
  syn region cComment2String	contained start=+L\=\\\@<!"+ skip=+\\\\\|\\"+ end=+"+ end="$" contains=cSpecial
  syn region  cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cComment2String,cCharacter,cNumbersCom,cSpaceError,cWrongComTail,@Spell
  if exists("c_no_comment_fold")
    " Use "extend" here to have preprocessor lines not terminate halfway a
    " comment.
    syn region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell extend
  else
    syn region cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cCommentString,cCharacter,cNumbersCom,cSpaceError,@Spell fold extend
  endif
else
  syn region	cCommentL	start="//" skip="\\$" end="$" keepend contains=@cCommentGroup,cSpaceError,@Spell
  if exists("c_no_comment_fold")
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell extend
  else
    syn region	cComment	matchgroup=cCommentStart start="/\*" end="\*/" contains=@cCommentGroup,cCommentStartError,cSpaceError,@Spell fold extend
  endif
endif
" keep a // comment separately, it terminates a preproc. conditional
syn match	cCommentError	display "\*/"
syn match	cCommentStartError display "/\*"me=e-1 contained
syn match	cWrongComTail	display "\*/"

hi MatchParen ctermbg=darkcyan cterm=none ctermfg=none

hi ALEErrorSign ctermbg=darkblue cterm=none ctermfg=red
hi ALEWarningSign ctermbg=darkblue cterm=none ctermfg=yellow

"hi ALEErrorLine ctermbg=darkgreen cterm=none ctermfg=red
"hi ALEWarningLine ctermbg=lightgrey cterm=none ctermfg=yellow

hi ALEError ctermbg=darkgreen cterm=none ctermfg=red
hi ALEWarning ctermbg=lightgrey cterm=none ctermfg=yellow

hi SignColumn ctermbg=darkblue cterm=none ctermfg=none
" hi LineNr ctermfg=lightgrey ctermbg=darkblue cterm=none
hi LineNr ctermfg=darkgrey ctermbg=darkblue cterm=none
hi CursorLine ctermbg=darkred cterm=none
hi CursorColumn ctermbg=darkred cterm=none
hi Search ctermbg=lightgreen ctermfg=none cterm=none
" hi CursorLineNr ctermbg=darkblue ctermfg=darkcyan cterm=none
hi CursorLineNr ctermbg=darkblue ctermfg=blue cterm=none
hi VertSplit ctermbg=white ctermfg=white
hi Operator ctermbg=none ctermfg=darkcyan
hi Comment ctermfg=darkgrey
hi Constant ctermfg=cyan
hi cCharacter ctermfg=green
hi cSpecialCharacter ctermfg=green
hi cNumber ctermfg=green
hi cOctal ctermfg=green
hi cFloat ctermfg=green
hi cOctalZero ctermfg=green
hi cString ctermfg=green
hi Function ctermfg=darkyellow
hi Conditional ctermfg=blue
hi Repeat ctermfg=blue
hi Label ctermfg=darkmagenta
hi Operator ctermfg=darkmagenta
hi Statement ctermfg=lightred
hi Exception ctermfg=lightgreen
hi PreProc ctermfg=lightred
hi cDefine ctermfg=lightred
hi Todo ctermfg=blue ctermbg=none cterm=bold
hi Type ctermfg=green ctermbg=none cterm=bold
hi StorageClass ctermfg=blue ctermbg=none cterm=bold
hi Structure ctermfg=blue ctermbg=none cterm=bold
hi Typedef ctermfg=darkmagenta ctermbg=none cterm=bold
hi cVarIdentifier ctermfg=yellow
hi cPreIdentifier ctermfg=lightred
hi cVarFunIdentifier ctermfg=darkyellow
hi cMacFunIdentifier ctermfg=darkmagenta
hi _Operator ctermfg=darkgrey ctermbg=None
