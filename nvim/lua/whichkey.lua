local whichkey = require("which-key")

whichkey.setup({
    icons = {
        breadcrumb = ">>",
        separator = "->",
    },
    spelling = {
        enabled = true,
        suggestions = 20,
    }
})
