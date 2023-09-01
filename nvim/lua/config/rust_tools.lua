local mason_registry = require("mason-registry")
local codelldb = mason_registry.get_package("codelldb")
local rust_tools_dap = require("rust-tools.dap")

local codelldb_install_path = codelldb:get_install_path()
local codelldb_path = codelldb_install_path .. "adapter/codelldb"
local liblldb_path = codelldb_install_path .. "lldb/lib/liblldb.so"

local config = {
    dap = {
        adapter = rust_tools_dap.get_codelldb_adapter(codelldb_path, liblldb_path),
    }
}

return config
