local lspconfig = require("lspconfig")
local rust_tools = require("core.rust_tools")
local lsp_configs = require("config.lsp")

local function default_setup_handler(server_name)
    local lsp = lspconfig[server_name]
    local config = lsp_configs.get_server_config(server_name)
    lsp.setup(config)
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
            ["rust_analyzer"] = rust_tools.rust_setup_handler,
        },
    }
}

return config
