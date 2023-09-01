local which_key = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local LSP_CONFIGS = {
    default = {
        capabilities = cmp_capabilities,
        on_attach = register_common_lsp_keymap,
    },
    ["rust_analyzer"] = {
        on_attach = function ()
            register_common_lsp_keymap()
            which_key.regsiter(keymap["lsp_rust_analyzer"])
        end,
        settings = {
            ["rust_analyzer"] = {
                cargo = {
                    buildScripts = {
                        enable = true,
                    },
                    features = "all"
                },
                procMacro = {
                    enable = true
                },
            },
        },
    },
}

local function get_config_field_or_default(config, setting_name)
    if config == nil or config[setting_name] == nil then
        return LSP_CONFIGS["default"][setting_name]
    else
        return config[setting_name]
    end
end

local function get_normalized_lsp_config(server_name)
    local normalized_lsp_config = {}
    local lsp_config = LSP_CONFIGS[server_name]
    normalized_lsp_config["capabilities"] = get_config_field_or_default(lsp_config, "capabilities")
    normalized_lsp_config["on_attach"] = get_config_field_or_default(lsp_config, "on_attach")
    return normalized_lsp_config
end

return {
    LSP_CONFIGS = LSP_CONFIGS,
    get_normalized_lsp_config = get_normalized_lsp_config,
}
