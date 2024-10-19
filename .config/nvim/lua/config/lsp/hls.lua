local lsp_config = require('lspconfig')

return function()
    lsp_config.hls.setup({
        default_config = {
            cmd = { "haskell-language-server-wrapper", "--lsp" },
            filetypes = { 'haskell', 'lhaskell', 'cabal' },
            root_dir = lsp_config.util.root_pattern("hie.yaml", "stack.yaml", "cabal.project", "*.cabal", "package.yaml", '.git'),
            settings = {
                haskell = {
                    cabalFormattingProvider = "cabalfmt",
                    formattingProvider = "ormolu"
                }
            }
        }
    })
end
