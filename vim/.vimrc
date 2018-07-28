set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'w0rp/ale'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'altercation/vim-colors-solarized'
"Plugin 'Shougo/deoplete.nvim'
"Plugin 'ternjs/tern_for_vim'
"Plugin 'wesQ3/vim-windowswap'
"Plugin 'mxw/vim-jsx'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'
call vundle#end()

filetype plugin indent on
syntax enable

"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

colorscheme solarized

let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:deoplete#enable_at_startup = 1

map <C-e> :NERDTreeToggle<CR>
map <leader>e :NERDTreeFind<CR>
map <leader>l :NERDTreeFind<cr>
nmap <leader>nt :NERDTreeFind<CR>
nmap <F8> :TagbarToggle<CR>
