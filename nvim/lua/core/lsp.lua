local lspconfig = require('lspconfig')
local mason_lspconfig = require("mason-lspconfig")

local lsp_settings = {}

mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup(lsp_settings[server_name])
  end,
})
