local lspconfig = require('lspconfig')
local mason_lspconfig = require("mason-lspconfig")

local LSP_CONFIGS = {}

local function get_lsp_config_or_default(lsp_configs, server_name)
    local config = lsp_configs[server_name]
    if config == nil then
        return config
    else
        return lsp_configs["default"]
    end
end

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup(get_lsp_config_or_default(LSP_CONFIGS, server_name))
    end,
})
