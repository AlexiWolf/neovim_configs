local Plug = vim.fn["plug#"]

vim.call("plug#begin")
    Plug("tpope/vim-fugitive")
    Plug("folke/which-key.nvim")
    Plug("EdenEast/nightfox.nvim")
    Plug("williamboman/mason.nvim")
vim.call("plug#end")

