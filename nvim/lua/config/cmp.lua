local cmp = require("cmp")
local luasnip = require("luasnip")

local keymap = require("config.keymap")

local config = {
    mapping = keymap["cmp"],
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    sources = cmp.config.sources(
        {
            { name = "nvim_lua" },
            { name = "nvim_lsp" },
            { name = "luasnip" },
        },
        {
            { name = "buffer" },
        }
    ),
}

return config
