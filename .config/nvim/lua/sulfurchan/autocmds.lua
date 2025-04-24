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


vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
    pattern = "*.h",
    callback = function()
        vim.opt_local.filetype = "c"
    end
})
