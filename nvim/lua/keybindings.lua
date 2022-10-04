local whichkey = require("which-key")
local vimkeys = vim.keymap

-- Split Window Navigation With <Ctrl>+[hjkl]
vimkeys.set("n", "<c-k>", ":wincmd k<CR>", {silent = true})
vimkeys.set("n", "<c-j>", ":wincmd j<CR>", {silent = true})
vimkeys.set("n", "<c-h>", ":wincmd h<CR>", {silent = true})
vimkeys.set("n", "<c-l>", ":wincmd l<CR>", {silent = true})

-- Goto Keybindings
local goto_keymap = {
    name = "Goto",

    -- Default Gotos
    g = {"gg", "top of file"},
    
    -- LSP Gotos
    d = {"<Plug>(coc-definition)", "LSP symbol definition"},
    D = {"<Plug>(coc-type-definition)", "LSP type definition"},
    i = {"<Plug>(coc-implementation)", "LSP implementations"},
    r = {"<Plug>(coc-references)", "LSP references"},
    
    -- Easymotion Gotos
    l = {"<Plug>(easymotion-overwin-line)", "easymotion line"},
    w = {"<Plug>(easymotion-overwin-w)", "easymotion word"},
    c = {"<Plug>(easymotion-overwin-f)", "easymotion character"},
    ["cc"] = {"<Plug>(easymotion-overwin-f2)", "easymotion 2-character"},
    
}

-- Git Keybindings
local git_keymap = {
    name = "Git",
    s = {":G status<CR>", "view status"},
    d = {":G diff<CR>", "view diff"},
    l = {":Commits<CR>", "view commit log"},
    L = {":BCommits<CR>", "view commit log for current buffer"},
    a = {":G add --all<CR>", "stage all"},
    c = {":G commit<CR>", "commit"},
    C = {":G add --all | :G commit<CR>", "stage all and commit"},
    p = {":G push <CR>", "push"},
    P = {":G pull <CR>", "pull"},
    f = {":G fetch<CR>", "fetch"},
}

-- Test Runner Keybindings
local test_runner_keymap = {
    name = "Run Tests",
    n = {":TestNearest<CR>", "run test nearest to cursor"},
    f = {":TestFile<CR>", "run tests in current file"},
    s = {":TestSuite<CR>", "run all tests"},
    l = {":TestLast<CR>", "rerun the last test command"},
    c = {":TestClass<CR>", "run tests in current class"},
    v = {":TestVisit<CR>", "open the last test in current buffer"},
}

local terminal_keymap = {
    name = "Terminal",
    t = {":Ttoggle<cr>", "Toggle the terminal"},
    T = {":TtoggleAll<cr>", "Toggle all terminals"},
    c = {":Tclose<cr>", "Close the terminal"},
    C = {":TcloseAll<cr>", "Close all terminals"},
}

-- Leader Keybindings
vim.g.mapleader = " "
local leader_keymap = {
    name = "Leader Actions",
    f = {":Files<CR>", "open file picker"},
    s = {":BTags<CR>", "open symbol picker"},
    S = {":Tags<cr>", "Open workspace symbol picker"},
    g = git_keymap,
    t = test_runner_keymap,
    T = terminal_keymap,
}

-- Register Keymaps
whichkey.register({["<bs>"] = {":WhichKey<CR>", "Show all keybindings"}})
whichkey.register(leader_keymap, {prefix = "<leader>"})
whichkey.register(goto_keymap, {prefix = "g"})
