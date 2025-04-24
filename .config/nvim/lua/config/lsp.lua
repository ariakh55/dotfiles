local lsp = require("lsp-zero")

return function()
    lsp.ui({
        suggest_lsp_servers = false,
        sign_text = {
            error = 'E',
            warn = 'W',
            hint = 'H',
            info = 'I'
        }
    })

    local lsp_attach = function(_, bufnr)
        local opts = { buffer = bufnr, remap = false }

        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>ws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end

    lsp.extend_lspconfig({
        lsp_attach = lsp_attach,
        float_border = 'rounded',
        sign_text = true,
    })

    require("config.lsp.efm")()
    require("config.lsp.ts_ls")()
    require("config.lsp.gdscript")()
    require("config.lsp.phpactor")()
    require("config.lsp.hls")()
    require("config.lsp.clangd")()


    vim.diagnostic.config({
        virtual_text = true
    })
    vim.opt.signcolumn = 'yes'
end
