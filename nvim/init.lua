local set = vim.opt

set.compatible = false
set.errorbells = false

set.number = true
set.relativenumber = true

set.smartindent = true
set.scrolloff = 999

set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true

set.wrap = false
set.colorcolumn = {79, 99, 119}

set.timeoutlen = 1000

set.spell = true
set.spelllang = { "en_us" }
set.spelloptions = "camel"
set.smartcase = true

require("plugins")
require("whichkey")
require("keybindings")
require("neoterm")
require("vim_test")
require("gutentags")
require("lsp_configs")
require("fzf_config")
require("treesitter_config")
require("luasnip_config")
require("cmp_config")

vim.cmd("colorscheme duskfox")
