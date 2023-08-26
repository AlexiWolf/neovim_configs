local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local mason_config = require("config.mason")

mason.setup()
mason_lspconfig.setup(mason_config.lsp_config)
