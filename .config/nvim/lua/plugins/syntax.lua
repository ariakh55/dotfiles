return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            local config = require("config.treesitter")
            require('nvim-treesitter.configs').setup(config)
            
            -- fold config
            vim.opt.foldmethod = "expr"
            vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
        end
        -- build = ":TSUpdate"
    },
    { 
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        dependencies = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            { "mattn/efm-langserver" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
            { "mfussenegger/nvim-jdtls" },
        },
        config = function()
            require("config.lsp")()
        end
    },
}
