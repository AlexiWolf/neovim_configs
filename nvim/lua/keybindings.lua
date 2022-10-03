local whichkey = require("whichkey_setup")
local vimkeys = vim.keymap

vimkeys.set("n", "<c-k>", ":wincmd k<CR>", {silent = true})
vimkeys.set("n", "<c-j>", ":wincmd j<CR>", {silent = true})
vimkeys.set("n", "<c-h>", ":wincmd h<CR>", {silent = true})
vimkeys.set("n", "<c-l>", ":wincmd l<CR>", {silent = true})

vim.g.mapleader = " "
local leader_keymap = {
    name = "Leader Actions",
}
whichkey.register_keymap("leader", leader_keymap)

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
whichkey.register_keymap("g", goto_keymap)
