local lsp = require("lsp-zero")
local lsp_config = require('lspconfig')

return function()
    require('mason').setup({})
    require('mason-lspconfig').setup({
        ensure_installed = {
            'efm',
            'pyright',
            'ts_ls',
            'eslint',
            'html',
            'jsonls',
            'clangd',
            'rust_analyzer',
            'lua_ls'
        },
        automatic_enable = {
            "lua_ls",
        },
        handlers = {
            lsp.default_setup,
            lua_ls = function()
                local lua_opts = lsp.nvim_lua_ls()
                lsp_config.lua_ls.setup(lua_opts)
            end
        },
    })
end
