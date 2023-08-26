local cmp = require("cmp")
local keymap = require("config.keymap")

local config = {
    mapping = keymap["cmp"],
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "luasnip" },
        },
        {
            { name = "buffer" },
        }
    ),
}

return config 
