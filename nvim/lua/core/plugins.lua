local Plug = vim.fn["plug#"]

vim.call("plug#begin")
    Plug("tpope/vim-fugitive")
    Plug("folke/which-key.nvim")
    Plug("EdenEast/nightfox.nvim")
    Plug("williamboman/mason.nvim")
    Plug("williamboman/mason-lspconfig.nvim")
    Plug("junegunn/fzf.vim")
    Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
    Plug("ludovicchabant/vim-gutentags")
    Plug("neovim/nvim-lspconfig")
vim.call("plug#end")

