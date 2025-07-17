return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            local config = require("config.treesitter")
            require('nvim-treesitter.configs').setup(config)

            -- fold config
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        end,
        build = ":TSUpdate"
    },
    -- LSP Support
    { "neovim/nvim-lspconfig" },
    {
        "williamboman/mason.nvim",
        tag = 'v1.11.0',
        config = function()
            require("config.lsp.mason")()
        end
    },
    { "williamboman/mason-lspconfig.nvim", tag = 'v1.32.0' },
    { "mfussenegger/nvim-jdtls" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            require("config.lsp.cmp")()
        end,
        dependencies = {
            { "hrsh7th/cmp-nvim-lsp" },
            {
                "L3MON4D3/LuaSnip",
                dependencies = {
                    { "rafamadriz/friendly-snippets", "saadparwaiz1/cmp_luasnip" }
                },
            },
        }
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v4.x",
        config = function()
            require("config.lsp")()
        end
    },
}
