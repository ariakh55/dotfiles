local lsp_config = require('lspconfig')

return function()
    lsp_config.clangd.setup({
        cmd = {'clangd', '--header-insertion=never'}
    })
end
