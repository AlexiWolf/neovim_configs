local whichkey = require("which-key")
local vimkeys = vim.keymap

-- Split Window Navigation With <Ctrl>+[hjkl]
vimkeys.set("n", "<c-k>", ":wincmd k<cr>", {silent = true})
vimkeys.set("n", "<c-j>", ":wincmd j<cr>", {silent = true})
vimkeys.set("n", "<c-h>", ":wincmd h<cr>", {silent = true})
vimkeys.set("n", "<c-l>", ":wincmd l<cr>", {silent = true})

-- Goto Keybindings
local goto_keymap = {
    name = "Goto",

    -- LSP Gotos
    d = {"<Plug>(coc-definition)", "LSP symbol definition"},
    D = {"<Plug>(coc-type-definition)", "LSP type definition"},
    i = {"<Plug>(coc-implementation)", "LSP implementations"},
    r = {"<Plug>(coc-references)", "LSP references"},

    -- Easymotion Gotos
    l = {"<Plug>(easymotion-overwin-line)", "easymotion line"},
    w = {"<Plug>(easymotion-overwin-w)", "easymotion word"},
    c = {"<Plug>(easymotion-overwin-f)", "easymotion character"},
    C = {"<Plug>(easymotion-overwin-f2)", "easymotion 2-character"},
}

-- Git Keybindings
local git_keymap = {
    name = "Git",
    s = {":G status<cr>", "view status"},
    d = {":G diff<cr>", "view diff"},
    l = {":Commits<cr>", "view commit log"},
    L = {":BCommits<cr>", "view commit log for current buffer"},
    a = {":G add --all<cr>", "stage all"},
    c = {":G commit<cr>", "commit"},
    C = {":G add --all | :G commit<cr>", "stage all and commit"},
    p = {":G push <cr>", "push"},
    P = {":G pull <cr>", "pull"},
    f = {":G fetch<cr>", "fetch"},
}

-- Test Runner Keybindings
local test_runner_keymap = {
    name = "Run Tests",
    n = {":TestNearest<cr>", "run test nearest to cursor"},
    f = {":TestFile<cr>", "run tests in current file"},
    s = {":TestSuite<cr>", "run all tests"},
    l = {":TestLast<cr>", "rerun the last test command"},
    c = {":TestClass<cr>", "run tests in current class"},
    v = {":TestVisit<cr>", "open the last test in current buffer"},
}

local terminal_keymap = {
    name = "Terminal",
    t = {":Ttoggle<cr>", "Toggle the terminal"},
    T = {":TtoggleAll<cr>", "Toggle all terminals"},
    c = {":Tclose<cr>", "Close the terminal"},
    C = {":TcloseAll<cr>", "Close all terminals"},
}

-- LSP Bindings

-- Using Vimscript because Lua bindings don't seem to work correctly.
vim.cmd [[
    " Use tab for trigger completion with characters ahead and navigate.
    inoremap <silent><expr> <TAB>
          \ coc#pum#visible() ? coc#pum#next(1):
          \ CheckBackspace() ? "\<Tab>" :
          \ coc#refresh()
    inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

    " Make <CR> to accept selected completion item or notify coc.nvim to format
    " <C-g>u breaks current undo, please make your own choice.
    inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

    function! CheckBackspace() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction
]]

-- Leader Keybindings
vim.g.mapleader = " "
local leader_keymap = {
    name = "Leader Actions",

    f = {":Files<cr>", "open file picker"},
    s = {":BTags<cr>", "open symbol picker"},
    S = {":Tags<cr>", "Open workspace symbol picker"},
    g = git_keymap,
    t = test_runner_keymap,
    T = terminal_keymap,

    -- LSP Leader Bindings
    r = {"<Plug>(coc-rename)", "Rename Symbol"},
    a = {"<Plug>(coc-codeaction-selected)<cr>", "Apply code action to selection"},
    A = {"<Plug>(coc-fix-current)", "Autofix problem on current line"},
    c = {"<Plug>(coc-codelens-action)", "Run codelens action on selected line"},
    k = {":lua=_G.show_docs()<cr>", "Show Documentation for selected symbol"},
}

-- Register Keymaps
whichkey.register({["<bs>"] = {":WhichKey<cr>", "Show all keybindings"}})
whichkey.register(leader_keymap, {prefix = "<leader>", silent = true})
whichkey.register(goto_keymap, {prefix = "g"})
