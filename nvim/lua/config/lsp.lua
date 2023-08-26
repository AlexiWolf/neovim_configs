local which_key = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local default_config = {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keymap,
}

local config = {
    default = default_config,
    ["rust_analyzer"] = {
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

return config
