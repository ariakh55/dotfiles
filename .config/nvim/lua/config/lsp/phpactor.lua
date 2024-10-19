local lsp_config = require('lspconfig')

return function()
    lsp_config.phpactor.setup({
        cmd = { "phpactor", "language-server" },
        filetypes = { "php" },
        root_dir = lsp_config.util.root_pattern("composer.json", ".git"),
    })
end
