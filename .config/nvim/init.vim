let $VIMUSERRUNTIME = fnamemodify($MYVIMRC, ':p:h')

source $VIMUSERRUNTIME/plugins.vim
source $VIMUSERRUNTIME/coc.vim

" General
"" if hidden is not set, TextEdit might fail.
set hidden
"" also show tabline at top
set showtabline=2
"" show existing tab with 4 spaces width
set tabstop=4
"" when indenting with '>', use 4 spaces width
set shiftwidth=4
"" On pressing tab, insert 4 spaces
set expandtab
"" show number
set number
"" enable mouse
set mouse=a
"" always show statusline
set laststatus=2
"" tell vim we using 256 color terminal
set t_Co=256
"" enable force write with sudo
cmap W w suda://%
"" use escape key in terminal mode
tnoremap <Esc> <C-\><C-n>
"" use system clipboard
set clipboard+=unnamedplus
set shell=bash

"" show dotfiles
let g:NERDTreeShowHidden=1

" statusline
"" enable powerline fonts
let g:airline_powerline_fonts = 1
"" set airline theme
let g:airline_theme='molokai'
"" enable top bar
let g:airline#extensions#tabline#enabled = 1
"" show number of buffers
let g:airline#extensions#tabline#buffer_nr_show = 1
"" coc integration
let g:airline#extensions#disable_rtp_load = 1
let g:airline#extensions#coc#enabled = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


" split at the bottom
set splitbelow
" auto start
autocmd vimenter *
            \ NERDTree |
            \ execute "wincmd l" |
            \ split | resize 10 | execute"term fish" | stopinsert |
            \ execute "wincmd k"

" set filetype for react
autocmd BufNewFile,BufRead *.tsx set syntax=typescript.tsx

" autosave
let g:auto_save = 1

" show quickfix list
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
