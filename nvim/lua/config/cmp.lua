local config = {
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
