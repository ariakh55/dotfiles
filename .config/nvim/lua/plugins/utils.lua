return {
    "mbbill/undotree",
    {
        "terrortylor/nvim-comment",
        config = function()
            local config = require('config.comment')
            require('nvim_comment').setup(config)
        end
    },
    {
        "alexghergh/nvim-tmux-navigation",
        config = function()
            require("config.navigator")()
        end
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to  `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to  defaults
            })
        end
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("config.npairs")()
        end
    },
    {
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function()
            vim.g.mkdp_filetypes = { "markdown" }
        end,
        ft = { "markdown" }
    },
}
