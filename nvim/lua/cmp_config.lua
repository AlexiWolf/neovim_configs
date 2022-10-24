local cmp = require("cmp")

cmp.setup {
    snippet = {
        expand = function(args) end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item({behavior=cmp.SelectBehavior.Insert}),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({behavior=cmp.SelectBehavior.Insert}),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
        }, {
            { name = "buffer" },
        }
    )
}

  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' },
    }, {
      { name = 'buffer' },
    })
  })

  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
