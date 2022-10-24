local whichkey = require("which-key")
local vimkeys = vim.keymap

-- Goto Keybindings
local goto_keymap = {
    name = "Goto",

    -- Easymotion Gotos
    l = {"<Plug>(easymotion-overwin-line)", "Easymotion line"},
    w = {"<Plug>(easymotion-overwin-w)", "Easymotion word"},
    c = {"<Plug>(easymotion-overwin-f)", "Easymotion character"},
    C = {"<Plug>(easymotion-overwin-f2)", "Easymotion 2-character"},
}

-- Git Keybindings
local git_keymap = {
    name = "Git",
    s = {":G status<cr>", "View status"},
    d = {":G diff<cr>", "View diff"},
    l = {":Commits<cr>", "View commit log"},
    L = {":BCommits<cr>", "View commit log for current buffer"},
    a = {":G add --all<cr>", "Stage all"},
    c = {":G commit<cr>", "Commit"},
    C = {":G add --all | :G commit<cr>", "Stage all and commit"},
    p = {":G push <cr>", "Push"},
    P = {":G pull <cr>", "Pull"},
    f = {":G fetch<cr>", "Fetch"},
}

-- Test Runner Keybindings
local test_runner_keymap = {
    name = "Run Tests",
    n = {":TestNearest<cr>", "Run test nearest to cursor"},
    f = {":TestFile<cr>", "Run tests in current file"},
    s = {":TestSuite<cr>", "Run all tests"},
    l = {":TestLast<cr>", "Rerun the last test command"},
    c = {":TestClass<cr>", "Run tests in current class"},
    v = {":TestVisit<cr>", "Open the last test in current buffer"},
}

local terminal_keymap = {
    name = "Terminal",
    t = {":Ttoggle<cr>", "Toggle the terminal"},
    T = {":TtoggleAll<cr>", "Toggle all terminals"},
    c = {":Tclose<cr>", "Close the terminal"},
    C = {":TcloseAll<cr>", "Close all terminals"},
}

-- LSP Bindings

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
}

-- Register Keymaps
whichkey.register({["<bs>"] = {":WhichKey<cr>", "Show all keybindings"}})
whichkey.register(leader_keymap, {prefix = "<leader>", silent = true})
whichkey.register(goto_keymap, {prefix = "g"})

-- Split Window Navigation With <Ctrl>+[hjkl]
whichkey.register({["<c-k>"] = {":wincmd k<cr>", "Go to the up window"}}, {silent = true})
whichkey.register({["<c-j>"] = {":wincmd j<cr>", "Go to the down window"}}, {silent = true})
whichkey.register({["<c-h>"] = {":wincmd h<cr>", "Go to the left window"}}, {silent = true})
whichkey.register({["<c-l>"] = {":wincmd l<cr>", "Go to the right window"}}, {silent = true})

