set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabli
set noshowmode

let g:lightline = {
      \   'colorscheme': 'solarized',
      \   'component': {
      \     'lineinfo': ' %3l:%-2v',
      \   },
      \   'component_function': {
      \     'gitbranch': 'fugitive#head',
      \   }
      \ }

let g:lightline.separator = {
      \   'left': '', 'right': ''
      \}

let g:lightline.subseparator = {
      \   'left': '', 'right': '' 
      \}

let g:lightline.tabline = {
      \   'left': [ ['tabs'] ],
      \   'right': [ ['close'] ]
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = { 
      \       'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]],
      \       'left': [[ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ]]
      \ }
