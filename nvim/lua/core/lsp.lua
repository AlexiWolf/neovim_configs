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

mason_lspconfig.setup_handlers({
    function(server_name)
        local config = get_lsp_config_or_default(LSP_CONFIGS, server_name)
        lspconfig[server_name].setup(config)
    end,
})
