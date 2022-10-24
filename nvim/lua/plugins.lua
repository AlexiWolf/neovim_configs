local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("easymotion/vim-easymotion")
Plug("EdenEast/nightfox.nvim")
Plug("folke/which-key.nvim")
Plug("gpanders/editorconfig.nvim")
Plug("itchyny/lightline.vim")
Plug("junegunn/fzf.vim")
Plug("kassio/neoterm")
Plug("ludovicchabant/vim-gutentags")
Plug("mfussenegger/nvim-dap")
Plug("tpope/vim-fugitive")
Plug("vim-test/vim-test")
Plug("neovim/nvim-lspconfig")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})

vim.call("plug#end")
