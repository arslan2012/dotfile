call plug#begin('~/.vim/plugged')
"" Dependency of ranger
Plug 'rbgrouleff/bclose.vim'
"" File Manager(Ranger)
Plug 'francoiscabrol/ranger.vim'
"" completion framework and language server client which supports extension features of VSCode.
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
"" gotta have a statusline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" make statusline pretty with icons
Plug 'ryanoasis/vim-devicons'
"" highlight unwanted whitespace
Plug 'ntpeters/vim-better-whitespace'
"" vim doesn't recognize typescript
Plug 'HerringtonDarkholme/yats.vim'
Plug 'lambdalisue/suda.vim'
call plug#end()

