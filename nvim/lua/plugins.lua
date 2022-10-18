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
Plug("neoclide/coc.nvim", {branch = "release"})
Plug("tpope/vim-fugitive")
Plug("vim-test/vim-test")

vim.call("plug#end")
