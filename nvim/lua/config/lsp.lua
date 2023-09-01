local which_key = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local default = {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keymap,
}

local LSP_CONFIGS = {
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

local function get_normalized_lsp_config(server_name)
    return vim.tbl_deep_extend("force", default, LSP_CONFIGS[server_name] or {})
end

return {
    LSP_CONFIGS = LSP_CONFIGS,
    get_normalized_lsp_config = get_normalized_lsp_config,
}
