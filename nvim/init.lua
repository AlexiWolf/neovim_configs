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
set.colorcolumn = {80}

set.timeoutlen = 1000 

require("plugins")
require("whichkey")
require("keybindings")
require("neoterm")
require("vim_test")
require("gutentags")
require("lsp_configs")

if os.getenv("COLORTERM") == "truecolor" then
    vim.cmd("colorscheme carbonfox")
else
    vim.cmd("colorscheme morning")
end

