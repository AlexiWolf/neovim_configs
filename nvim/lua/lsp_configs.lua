local lspconfig = require("lspconfig")
local whichkey = require("which-key")

local common_lsp_keybinds = {
    K = {vim.lsp.buf.hover, "Show documentation"},
    g = {
        d = {vim.lsp.buf.definition, "LSP symbol definition"},
        i = {vim.lsp.buf.implementation, "LSP implementations"},
        r = {vim.lsp.buf.reference, "LSP references"},
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
    on_attach = register_common_lsp_keybindings,
}

lspconfig.rust_analyzer.setup {
    on_attach = register_common_lsp_keybindings,
}

