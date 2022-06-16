let test#strategy = "neovim"

let test#rust#cargotest#options = "--all-features"
let test#java#runner = "gradletest"

nmap <silent> tn :TestNearest<CR>
nmap <silent> tf :TestFile<CR>
nmap <silent> ts :TestSuite<CR>
nmap <silent> tl :TestLast<CR>
nmap <silent> tg :TestVisit<CR>
