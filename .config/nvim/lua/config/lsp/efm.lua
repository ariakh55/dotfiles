local lsp_config = require('lspconfig')
local prettierd = require("config.lsp.prettierd")
local black = require("config.lsp.black")
local nixpkgs_fmt = require("config.lsp.nixpkg")
local clang_format = require("config.lsp.clang-format")

local config = {
    init_options = {
        documentFormatting = true,
        documentRangeFormatting = true,
    },
    settings = {
        rootMarkers = { '.git' },
        lintDebouce = true,
        languages = {
            javascript = { prettierd },
            typescript = { prettierd },
            javascriptreact = { prettierd },
            typescriptreact = { prettierd },
            python = { black },
            nix = { nixpkgs_fmt },
            c = { clang_format },
            cpp = { clang_format },
        },
    },
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "typescript.tsx",
        "typescriptreact",
        "nix",
        "python",
        "c", "cpp"
    }
}

return function()
    lsp_config.efm.setup(config)
end
