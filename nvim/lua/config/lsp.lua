local which_key = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local config = {
    default = {
        capabilities = cmp_capabilities,
    },
    ["rust_analyzer"] = {
        capabilities = cmp_capabilities,
        on_attach = register_common_lsp_keymap,
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
