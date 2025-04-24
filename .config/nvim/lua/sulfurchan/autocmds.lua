local main_autocmd_group = vim.api.nvim_create_augroup("Main auto-commands", { clear = true })
local js_autocmd_group = vim.api.nvim_create_augroup("JS auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.svelte" },
    desc = "Auto-format javascript/typescript files after saving",
    callback = function()
        vim.lsp.buf.format()
        -- vim.cmd("EslintFixAll")
    end,
    group = js_autocmd_group,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    callback = function()
        -- require("lint").try_lint()
    end,
    group = js_autocmd_group
})

vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.h",
    callback = function()
        vim.opt_local.filetype = "c"
    end,
    group = main_autocmd_group
})

vim.api.nvim_create_autocmd({ "BufReadPre" }, {
    pattern = { "*.ts", "*.tsx" },
    desc = "Loading code-snippets",
    callback = function()
        local ft = vim.bo.filetype
        local snippets_file = ".vscode/" .. ft .. ".code-snippets"
        if vim.fn.filereadable(snippets_file) ~= 1 then
            return
        end

        vim.cmd('VscodeSnippets' .. ' ' .. snippets_file)
    end,
    group = js_autocmd_group
})
