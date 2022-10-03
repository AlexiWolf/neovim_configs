" Set Leader Key
nnoremap <space> <nop>
let mapleader = " "

" Fuzzy Finding

" Fuzzy Find tags with 'ff':
nmap <silent><leader>f :Tags<CR> 
" Fuzzy find files with 'FF':
nmap <silent><leader>F :FZF<CR>

" Jumps

" Jump to characters:
nmap fc <Plug>(easymotion-overwin-f)
nmap fcc <Plug>(easymotion-overwin-f2)

" Jump to word: 
nmap fw <Plug>(easymotion-overwin-w)

" Jump to lines:
nmap fj <Plug>(easymotion-j)
nmap fk <Plug>(easymotion-k)
nmap fl <Plug>(easymotion-overwin-line)

" Jump to definition:
nmap <silent> fd <Plug>(coc-definition)
nmap <silent> fD <Plug>(coc-type-definition)
nmap <silent> fi <Plug>(coc-implementation)
nmap <silent> fr <Plug>(coc-references)


" Window Split Navigation

" Move between window splits with <CTRL>+[hjkl]: 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Git

" View Git status:
nmap <leader>gs :G status<CR>

" Stage all changes:
nmap <leader>gaa :G add --all<CR> 

" Commit changes: 
nmap <leader>gc  :G commit<CR>

" Push changes:
nmap <leader>gp :G push<CR>

" Fetch remote changes:
nmap <leader>gf :G fetch<CR>

" Pull remote changes:
nmap <leader>gP :G pull<CR>

" View diff:
nmap <leader>gd :G diff<CR>


" Testing

" Run tests:
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tg :TestVisit<CR>
