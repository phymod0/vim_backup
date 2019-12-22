
hi clear Normal
set bg&

hi clear

if exists("syntax_on")
  syntax reset
endif

set term=linux

hi Identifier ctermfg=white cterm=none
syn match Identifier "[A-Za-z_][0-9A-Za-z_]*"

hi Mac ctermfg=lightred cterm=none
syn match Mac "[A-Z_][0-9A-Z_]*"

hi String ctermfg=lightgreen cterm=none
hi Include ctermfg=lightred cterm=none
hi cDefine ctermfg=lightred cterm=none
hi PreProc ctermfg=lightred cterm=none
hi Error ctermfg=lightred ctermbg=black cterm=none
hi cFormat ctermfg=lightblue cterm=none
hi Comment ctermfg=grey cterm=none
hi cConditional ctermfg=lightblue cterm=none
hi Character ctermfg=lightgreen cterm=none
hi cSpecial ctermfg=lightblue cterm=none
hi Number ctermfg=lightgreen cterm=none
hi Float ctermfg=lightgreen cterm=none
hi Operator ctermfg=lightblue cterm=none
hi Structure ctermfg=lightgreen cterm=none
hi StorageClass ctermfg=lightcyan cterm=none
hi Statement ctermfg=lightred cterm=none
hi Type ctermfg=lightgreen cterm=none
hi Constant ctermfg=lightgreen cterm=none
hi Todo ctermfg=lightblue cterm=none

hi MyKeyword4 ctermfg=lightblue cterm=none
syn match MyKeyword4 "\(for\|while\|do\|if\|else\|case\|default\|switch\)"

hi MyKeyword6 ctermfg=lightred cterm=none
syn match MyKeyword6 "\(#include\|#include_next\|#define\|#undef\|#ifdef\|#ifndef\|#endif\|#elif\|#else\|#if\|#warning\|#error\|#pragma\)"

hi MyKeywordTwo ctermfg=darkgreen cterm=none
syn match MyKeyword2 "\(fd_set\|socklen_t\|sockaddr\|sockaddr_in\|size_t\|ssize_t\|int8_t\|int16_t\|int32_t\|int64_t\|intptr_t\|uint8_t\|uint16_t\|uint32_t\|uint64_t\|uintptr_t\|u_int8_t\|u_int16_t\|u_int32_t\|u_int64_t\|u_intptr_t\|s0_t\|s8_t\|s16_t\|s32_t\|s64_t\|u0_t\|u8_t\|u16_t\|u32_t\|u64_t|s0\|s8\|s16\|s32\|s64\|u0\|u8\|u16\|u32\|u64\)"

"hi MyKeyword5 ctermfg=lightred cterm=none
"syn match MyKeyword5 "\(try\|throw\|catch\|operator\|new\|delete\|goto\|continue\|break\|return\)"

"hi MySpecialChars ctermfg=lightblue cterm=none
"syn match MySpecialChars "[{};,:=]"




set t_Co=8
colorscheme default
