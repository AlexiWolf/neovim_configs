local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("easymotion/vim-easymotion")
Plug("EdenEast/nightfox.nvim")
Plug("folke/which-key.nvim")
Plug("gpanders/editorconfig.nvim")
Plug("vim-airline/vim-airline")
Plug("junegunn/fzf.vim")
Plug("gfanto/fzf-lsp.nvim")
Plug("kassio/neoterm")
Plug("ludovicchabant/vim-gutentags")
Plug("mfussenegger/nvim-dap")
Plug("mfussenegger/nvim-jdtls")
Plug("tpope/vim-fugitive")
Plug("samoshkin/vim-mergetool")
Plug("segeljakt/vim-silicon")
Plug("vim-test/vim-test")
Plug("neovim/nvim-lspconfig")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
Plug("nvim-lua/plenary.nvim")
Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("hrsh7th/cmp-cmdline")
Plug("L3MON4D3/LuaSnip")
Plug("rafamadriz/friendly-snippets")

vim.call("plug#end")
