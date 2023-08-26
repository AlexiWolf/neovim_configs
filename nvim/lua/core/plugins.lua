local Plug = vim.fn["plug#"]

vim.call("plug#begin")
    Plug("tpope/vim-fugitive")
    Plug("folke/which-key.nvim")
    Plug("EdenEast/nightfox.nvim")
    Plug("williamboman/mason.nvim")
    Plug("junegunn/fzf.vim")
    Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
    Plug("ludovicchabant/vim-gutentags")
vim.call("plug#end")

