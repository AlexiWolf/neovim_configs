local set = vim.opt
local api = vim.api 
local fn = vim.fn

set.backup = false
set.writebackup = false

set.signcolumn = "yes"

-- Highlight the symbol and its references when holding the cursor.
api.nvim_create_augroup("CocGroup", {})
api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Setup formatexpr for specified filetype(s).
api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder.
api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Add `:Format` command to format current buffer.
api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- " Add `:Fold` command to fold current buffer.
api.nvim_create_user_command("Fold", "call CocAction('fold', <f-args>)", {nargs = '?'})

-- Add `:OR` command for organize imports of the current buffer.
api.nvim_create_user_command("OR", "call CocActionAsync('runCommand', 'editor.action.organizeImport')", {})

-- Show documentation in preview window.
function _G.show_docs()
    local cw = fn.expand('<cword>')
    if fn.index({'vim', 'help'}, vim.bo.filetype) >= 0 then
        api.nvim_command('h ' .. cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        api.nvim_command('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end
