local lsp_config = require('lspconfig')

return function()
    lsp_config.clangd.setup({
        on_attach = function(client)
            client.server_capabilities.documentFormattingProvider = false
            client.server_capabilities.documentFormattingRangeProvider = false
        end,
        root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
                "Makefile",
                "configure.ac",
                "configure.in",
                "config.h.in",
                "meson.build",
                "meson_options.txt",
                "build.ninja"
            )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
                fname
            ) or require("lspconfig.util").find_git_ancestor(fname)
        end,
        capabilities = {
            offsetEncoding = { "utf-16" },
        },
        cmd = { 'clangd', '--header-insertion=never' }
    })
end
