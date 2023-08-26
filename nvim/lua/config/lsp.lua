local which_key = require("which-key")

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local config = {
    default = {},
    ["rust_analyzer"] = {
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
