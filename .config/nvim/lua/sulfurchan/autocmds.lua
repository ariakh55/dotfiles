local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", },
    desc = "Auto-format javascript/typescript files after saving",
    callback = function()
        vim.lsp.buf.format()
    end,
    group = autocmd_group,
})
