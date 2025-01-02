set viminfo+=n~/.viminfo
set encoding=utf-8
set t_Co=16
syntax on
set nu
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
autocmd TextChanged,TextChangedI *.tex silent write
let g:netrw_dirhistmax = 0

" Plugin Stuff
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=2
" let g:tex_conceal='abdmg'
let g:vimtex_syntax_conceal = {
    \ 'accents': 1,
    \ 'cites': 1,
    \ 'fancy': 1,
    \ 'greek': 1,
    \ 'math_bounds': 1,
    \ 'math_delimiters': 1,
    \ 'math_fracs': 1,
    \ 'math_super_sub': 1,
    \ 'math_symbols': 1,
    \ 'sections': 0,
    \ 'styles': 1,
\}
let g:vimtex_view_forward_search_on_start=0


"Plug 'sirver/ultisnips'
"let g:UltiSnipsExpandTrigger = '<tab>'
"let g:UltiSnipsJumpForwardTrigger = '<tab>'
"let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'dense-analysis/ale'
let g:ale_fixers = {
\    'python': ['autopep8', 'autoimport'],
\}

call plug#end()
