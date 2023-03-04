local lspconfig = require("lspconfig")
local whichkey = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local common_lsp_keybinds = {
    K = {vim.lsp.buf.hover, "Show documentation"},
    g = {
        d = {vim.lsp.buf.definition, "LSP symbol definition"},
        i = {vim.lsp.buf.implementation, "LSP implementations"},
        r = {vim.lsp.buf.references, "LSP references"},
    },
    ["<leader>"] = {
        r = {vim.lsp.buf.rename, "Rename symbol"},
        a = {vim.lsp.buf.code_action, "Apply code action"},
    },
}

local register_common_lsp_keybindings = function()
    whichkey.register(
        common_lsp_keybinds,
        {silent = true, buffer = 0}
    )
end

lspconfig.sumneko_lua.setup {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
}

lspconfig.rust_analyzer.setup {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
    settings = {
        ["rust-analyzer"] = {
            cargo = {
                buildScripts = {
                    enable = true,
                },
                features = "all"
            },
            procMacro = {
                enable = true
            }
        }
    }
}

lspconfig.ccls.setup{
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
}

lspconfig.awk_ls.setup {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
}

lspconfig.jdtls.setup {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
}

lspconfig.pyright.setup {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keybindings,
}
