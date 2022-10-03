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

require("plugins")
