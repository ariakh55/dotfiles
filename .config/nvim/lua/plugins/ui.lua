return {
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.5",
        config = function()
            require("config.telescope")()
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            local config = require("config.lualine")
            require('lualine').setup(config)
        end
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require "alpha".setup(require "alpha.themes.startify".config)
        end
    },
    { 
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        config = function()
            require("config.harpoon")()
        end
    },
}
