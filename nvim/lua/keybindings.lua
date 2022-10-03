local whichkey = require("whichkey_setup")
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

local git_keymap = {
    name = "Git",
    s = {":G status<CR>", "view status"},
    d = {":G diff<CR>", "view diff"},
    l = {":G log<CR>", "view commit log"},
    a = {":G add --all<CR>", "stage all"},
    c = {":G commit<CR>", "commit"},
    p = {":G push <CR>", "push"},
    P = {":G pull <CR>", "pull"},
    f = {":G fetch<CR>", "fetch"},
}

-- Leader Keybindings
vim.g.mapleader = " "
local leader_keymap = {
    name = "Leader Actions",
    g = git_keymap,
}
whichkey.register_keymap("leader", leader_keymap)
whichkey.register_keymap("g", goto_keymap)
