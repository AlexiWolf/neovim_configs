local whichkey = require("whichkey_setup")
local set = vim.opt

set.timeoutlen = 500 

whichkey.config({
    hide_statusline = false,
    default_keymap_settings = {
        silent=true,
        noremap=true,
    },
    default_mode = "n",
})


