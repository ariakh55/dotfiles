return {
    "tpope/vim-fugitive",
    { 
        "lewis6991/gitsigns.nvim",
        config = function()
            local config = require("config.gitsigns")
            require('gitsigns').setup(config)
        end
    },
}
