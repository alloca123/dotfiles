call plug#begin('~/.plugged')
Plug 'ayu-theme/ayu-vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ajh17/vimcompletesme'
call plug#end()
set termguicolors
let ayucolor="dark"
colorscheme ayu
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
	autocmd FileType c let b:vcm_tab_complete = "omni"
        autocmd FileType cpp setlocal omnifunc=lsp#complete
	autocmd FileType cpp let b:vcm_tab_complete = "omni"
    augroup end
endif
