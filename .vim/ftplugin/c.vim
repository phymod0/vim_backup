let g:load_doxygen_syntax = 1
let c_gnu = 1
let c_space_errors = 1
let c_no_bracket_error = 1
let c_no_curly_error = 1
let c_syntax_for_h = 1

let g:ale_cpp_clangtidy_checks = [
\	'*',
\
\	'misc-*',
\	'-misc-non-private-member-variables-in-classes',
\
\	'hicpp-*',
\
\	'google-*',
\	'-google-runtime-references',
\	'-google-runtime-int',
\
\	'readability-*',
\	'-readability-const-return-type',
\
\	'-fuchsia-*',
\
\	'cppcoreguidelines-*',
\	'-cppcoreguidelines-pro-type-reinterpret-cast',
\	'-cppcoreguidelines-pro-bounds-pointer-arithmetic',
\	'-cppcoreguidelines-slicing',
\
\	'modernize-*',
\	'-modernize-use-trailing-return-type',
\	
\	'-llvm-header-guard',
\]
let g:ale_c_clang_options = '-std=c11 -Wall'
let g:ale_c_clangtidy_options = '-std=c11'
let g:ale_c_clangcheck_options = '-std=c11'
let g:ale_c_clazy_options = '-extra-arg=-std=c11'
let g:ale_c_gcc_options = '-std=c11 -Wall'
let g:ale_c_clangd_options = '-extra-arg=-std=c11'
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_highlight_expand = '\>'
let g:ale_fixers = ['clang-format']
let g:ale_fix_on_save = 1
