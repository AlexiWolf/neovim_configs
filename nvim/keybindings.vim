" Fuzzy Finding

" Fuzzy Find tags with 'ff':
nmap <silent>ff :Tags<CR> 
" Fuzzy find files with 'FF':
nmap <silent>FF :FZF<CR>


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


" Window Split Navigation

" Move between window splits with <CTRL>+[hjkl]: 
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>


" Git

" View Git status:
nmap gs :G status<CR>

" Stage all changes:
nmap gaa :G add --all<CR> 

" Commit changes: 
nmap gc  :G commit<CR>

" Push changes:
nmap gp :G push<CR>

" Fetch remote changes:
nmap gf :G fetch<CR>

" Pull remote changes:
nmap gP :G pull<CR>

" View diff:
nmap gd :G diff<CR>


" Testing

" Run tests:
nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tg :TestVisit<CR>
