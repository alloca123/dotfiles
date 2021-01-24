call plug#begin('~/.plugged')
Plug 'reedes/vim-colors-pencil'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ajh17/vimcompletesme'
call plug#end()
set termguicolors
set background=dark
let g:pencil_higher_contrast_ui = 1
let g:pencil_neutral_code_bg = 1
colorscheme pencil
:set mouse=a
syntax on
set number
if executable('clangd')
    augroup lsp_clangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'clangd',
                    \ 'cmd': {server_info->['clangd']},
                    \ 'whitelist': ['c', 'cpp'],
                    \ })
        autocmd FileType c setlocal omnifunc=lsp#complete
        autocmd FileType cpp setlocal omnifunc=lsp#complete
    augroup end
endif
