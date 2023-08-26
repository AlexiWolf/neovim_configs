local lspconfig = require('lspconfig')
local mason_lspconfig = require("mason-lspconfig")

local lsp_settings = {}

function get_lsp_config_or_default(lsp_settings, server_name)
    local config = lsp_settings[server_name]
    if config == nil then
        return config
    else
        return lsp_settings["default"]
    end
end

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup(get_lsp_config_or_default(lsp_settings, server_name))
    end,
})
