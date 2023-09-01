local lspconfig = require("lspconfig")
local lsp_configs = require("config.lsp")

local function default_setup_handler(server_name)
    local lsp = lspconfig[server_name]
    local config = lsp_configs.get_normalized_lsp_config(server_name)
    lsp.setup(config)
end

local function rust_setup_handler()
    local rust_tools = require("rust-tools")
    rust_tools.setup()
    rust_tools.inlay_hints.set()
    rust_tools.runnables.runnables()
    rust_tools.hover_actions.hover_actions()
end

local config = {
    lsp_config = {
        ensure_installed = {
            "rust_analyzer",
            "lua_ls",
        },
        automatic_installation = true,
        handlers = {
            default_setup_handler,
            ["rust_analyzer"] = rust_setup_handler,
        },
    }
}

return config
