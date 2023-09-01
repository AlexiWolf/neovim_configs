local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

mason.setup()

-- Mason needs to set up before this runs, or the `rust-tools` integration with `codelldb` will 
-- fail because the `mason-registry` is not yet set up.  
local mason_config = require("config.mason")

mason_lspconfig.setup(mason_config.lsp_config)
