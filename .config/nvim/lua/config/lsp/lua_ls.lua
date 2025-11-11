local lsp_config = require('lspconfig')

return function()
  lsp_config.sumneko_lua.setup({
    settings = {
      Lua = {
        runtime = {
          version = 'Lua 5.4',
          path = {
            '?.lua',
            '?/init.lua',
            vim.fn.expand '~/.luarocks/share/lua/5.4/?.lua',
            vim.fn.expand '~/.luarocks/share/lua/5.4/?/init.lua',
            '/usr/share/5.4/?.lua',
            '/usr/share/lua/5.4/?/init.lua',
          }
        },
        workspace = {
          library = {
            vim.fn.expand '~/.luarocks/share/lua/5.4',
            '/usr/share/lua/5.4',
            '/usr/local/lib/lua/5.4'
          }
        }
      }
    }
  })
end
