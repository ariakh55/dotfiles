local lsp_config = require('lspconfig')

return function()
    lsp_config.ts_ls.setup({
        on_attach = function(client)
            -- disable ts_ls as a formatter
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentFormattingRangeProvider = false
        end,
    })

    require('lspconfig').eslint.setup({
        settings = {
            rootMarkers = { '.git', 'package.json' }
        }
    })
end
