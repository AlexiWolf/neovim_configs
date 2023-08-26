local config = {
    ["rust_analyzer"] = {
        cargo = {
            buildScripts = {
                enable = true,
            },
            features = "all"
        },
        procMacro = {
            enable = true
        }
    }
}

return config
