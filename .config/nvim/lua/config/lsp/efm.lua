local lsp_config = require('lspconfig')
local prettierd = require("config.lsp.prettierd")
local nixpkgs_fmt = require("config.lsp.nixpkg")

local config = {
    init_options = {
        documentFormatting = true,
        documentRangeFormatting = true,
    },
    settings = {
        rootMarkers = { '.git/' },
        languages = {
            javascript = { prettierd },
            typescript = { prettierd },
            nix = { nixpkgs_fmt },
        },
        filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescript.tsx",
            "typescriptreact",
            "nix"
        }
    }
}

return function()
    lsp_config.efm.setup(config)
end
