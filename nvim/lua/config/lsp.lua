local which_key = require("which-key")
local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities()

local keymap = require("config.keymap")

local function register_common_lsp_keymap()
    which_key.register(keymap["lsp_common"])
end

local defaults = {
    capabilities = cmp_capabilities,
    on_attach = register_common_lsp_keymap,
}

local configs = {
    ["rust_analyzer"] = {
        on_attach = function()
            register_common_lsp_keymap()
            which_key.register(keymap["lsp_rust_analyzer"])
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

local function get_server_config(server_name)
    return vim.tbl_deep_extend("force", {}, defaults, configs[server_name] or {})
end

return {
    get_server_config = get_server_config,
}
