call plug#begin()

" Editorconfig support
Plug 'editorconfig/editorconfig-vim'

" Automatic Tag Generation  
Plug 'ludovicchabant/vim-gutentags'

" Code Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Fugitive
Plug 'tpope/vim-fugitive'

" Testing
Plug 'vim-test/vim-test'

" Terminal
Plug 'kassio/neoterm'

" Easy Motion
Plug 'easymotion/vim-easymotion'

" Status Bar
Plug 'itchyny/lightline.vim'

call plug#end()
