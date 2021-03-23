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
	autocmd FileType c let b:vcm_tab_complete = "omni"
        autocmd FileType cpp setlocal omnifunc=lsp#complete
	autocmd FileType cpp let b:vcm_tab_complete = "omni"
    augroup end
endif
if executable('gopls')
    augroup lsp_gopls
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
                    \ 'name': 'gopls',
                    \ 'cmd': {server_info->['gopls']},
                    \ 'whitelist': ['go'],
                    \ })
        autocmd FileType go setlocal omnifunc=lsp#complete
	let b:vcm_tab_complete = "omni"
    augroup end
endif
