" Go fixes
" This resolves a bug which makes saving Go files slow
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go', 'html'] }
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
