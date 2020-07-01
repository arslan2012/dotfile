call plug#begin('~/.vim/plugged')
"" completion framework and language server client which supports extension features of VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" make statusline pretty with icons
Plug 'ryanoasis/vim-devicons'
"" highlight unwanted whitespace
Plug 'ntpeters/vim-better-whitespace'
"" vim doesn't recognize typescript
Plug 'HerringtonDarkholme/yats.vim'
"" write file as root
Plug 'lambdalisue/suda.vim'
"" comment out stuff
Plug 'tpope/vim-commentary'
"dir tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"auto save
Plug '907th/vim-auto-save'
call plug#end()

