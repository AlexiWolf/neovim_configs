local config = {
    lsp_config = {
        ensure_installed = {
            "rust_analyzer",
            "lua_ls",
        },
        automatic_installation = true,
        handlers = nil,
    }
}

return config
