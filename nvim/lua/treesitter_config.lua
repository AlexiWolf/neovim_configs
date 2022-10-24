local treesitter_configs = require("nvim-treesitter.configs")

treesitter_configs.setup {
    ensure_installed = "all",
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
}
