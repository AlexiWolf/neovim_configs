local cmp = require("cmp")

local keymap = {
    ["<leader>"] = {
        name = "Leader Actions",
        g = {
            name = "Git Actions",
            s = {":G status<cr>", "View status"},
            d = {":G diff<cr>", "View diff"},
            l = {":Commits<cr>", "View commit log"},
            L = {":BCommits<cr>", "View commit log for current buffer"},
            a = {":G add --all<cr>", "Stage all"},
            c = {":G commit<cr>", "Commit"},
            C = {":G add --all | :G commit<cr>", "Stage all and commit"},
            p = {":G push <cr>", "Push"},
            P = {":G pull <cr>", "Pull"},
            f = {":G fetch<cr>", "Fetch"},
        },
        f = {":Files<cr>", "Open file picker"},
        s = {":BTags<cr>", "Open symbol picker for the current buffer"},
        S = {":Tags<cr>", "Open symbol picker for the work-space"},
    },

    g = {
        name = "Goto Actions",
        l = {"<Plug>(easymotion-overwin-line)", "Easymotion line"},
        w = {"<Plug>(easymotion-overwin-w)", "Easymotion word"},
        c = {"<Plug>(easymotion-overwin-f)", "Easymotion character"},
        C = {"<Plug>(easymotion-overwin-f2)", "Easymotion 2-character"},
    },

    ["<c-k>"] = {":wincmd k<cr>", "Go to the up window"},
    ["<c-j>"] = {":wincmd j<cr>", "Go to the down window"},
    ["<c-h>"] = {":wincmd h<cr>", "Go to the left window"},
    ["<c-l>"] = {":wincmd l<cr>", "Go to the right window"},
}

local lsp_keymap = {
    K = {vim.lsp.buf.hover, "Show documentation"},
    g = {
        d = {vim.lsp.buf.definition, "LSP symbol definition"},
        i = {vim.lsp.buf.implementation, "LSP implementations"},
        r = {vim.lsp.buf.references, "LSP references"},
    },
    ["<leader>"] = {
        r = {vim.lsp.buf.rename, "Rename symbol"},
        a = {vim.lsp.buf.code_action, "Apply code action"},
    },
}

local cmp_keymap = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<C-j>"] = cmp.mapping.select_next_item(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = false }),
}

local keymaps = {
    ["common"] = keymap,
    ["lsp_common"] = lsp_keymap,
    ["cmp"] = cmp_keymap,
}

return keymaps
