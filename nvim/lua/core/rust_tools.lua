local function rust_setup_handler()
    local rust_tools = require("rust-tools")
    local config = require("config.rust_tools")

    rust_tools.setup(config)
    rust_tools.inlay_hints.set()
    rust_tools.runnables.runnables()
    rust_tools.hover_actions.hover_actions()
end

return {
    rust_setup_handler = rust_setup_handler,
}