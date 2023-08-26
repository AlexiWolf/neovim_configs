local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local LSP_CONFIGS = require("config.lsp")

local function get_lsp_config_or_default(lsp_configs, server_name)
    local config = lsp_configs[server_name]
    if config == nil then
        return lsp_configs["default"]
    else
        return config
    end
end

local function default_setup_handler(server_name)
    local lsp = lspconfig[server_name]
    local config = get_lsp_config_or_default(LSP_CONFIGS, server_name)
    lsp.setup(config)
end

mason_lspconfig.setup_handlers({
    default_setup_handler,
})
