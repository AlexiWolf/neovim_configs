local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local LSP_CONFIGS = require("config.lsp")

local function get_config_field_or_default(config, setting_name)
    if config == nil or config[setting_name] == nil then
        return LSP_CONFIGS["default"][setting_name]
    else
        return config[setting_name]
    end
end

local function build_lsp_config(server_name)
    local normalized_lsp_config = {}
    local lsp_config = LSP_CONFIGS[server_name]
    normalized_lsp_config["capabilities"] = get_config_field_or_default(lsp_config, "capabilities")
    normalized_lsp_config["on_attach"] = get_config_field_or_default(lsp_config, "on_attach")
    return normalized_lsp_config
end

local function default_setup_handler(server_name)
    local lsp = lspconfig[server_name]
    local config = build_lsp_config(server_name)
    lsp.setup(config)
end

mason_lspconfig.setup_handlers({
    default_setup_handler,
})
