local keymap = {
    ["<leader>"] = {
        name = "Leader Actions",   

        g = {
            name = "Git",
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
        }
    }
}

return keymap
