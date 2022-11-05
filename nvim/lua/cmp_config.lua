local cmp = require("cmp")

cmp.setup {
    snippet = {
        expand = function(args)

        end,
    },
    mapping = {
        ["<c-k>"] = cmp.mapping.select_prev_item(),
        ["<c-j>"] = cmp.mapping.select_next_item(),
    },
    sources = cmp.config.sources(
        {
            { name = 'nvim_lsp' },
        },
        {
            { name = 'buffer' },
        }
    )
}
