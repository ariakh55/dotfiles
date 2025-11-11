local GIT_PROVIDERS = {
        github = "https://github.com/",
        gitlab = "https://gitlab.com/"
}
local autocmd = vim.api.nvim_create_autocmd

local function plugin(userrepo, provider)
        provider = provider or GIT_PROVIDERS.github

        return provider .. userrepo
end

--plugins
vim.pack.add({
        -- theme
        plugin "loctvl842/monokai-pro.nvim",

        --syntax
        plugin "nvim-treesitter/nvim-treesitter",
        plugin "neovim/nvim-lspconfig",
        { src = plugin "williamboman/mason.nvim",           version = 'v1.11.0' },
        { src = plugin "williamboman/mason-lspconfig.nvim", version = 'v1.32.0' },
        plugin "hrsh7th/nvim-cmp",
        plugin "hrsh7th/cmp-nvim-lsp",
        { src = plugin "VonHeikemen/lsp-zero.nvim",     version = 'v4.x' },
        plugin "L3MON4D3/LuaSnip",
        plugin "saadparwaiz1/cmp_luasnip",

        -- essentials
        plugin "nvim-lua/plenary.nvim",
        plugin "nvim-tree/nvim-web-devicons",

        --ui
        { src = plugin "nvim-telescope/telescope.nvim", version = '0.1.5' },
        -- { src = plugin "ThePrimeagen/harpoon", version = 'harpoon2'},

        --version control
        plugin "tpope/vim-fugitive",
        plugin "lewis6991/gitsigns.nvim",
        plugin "mbbill/undotree",

        --utils
        plugin "alexghergh/nvim-tmux-navigation",
        plugin "terrortylor/nvim-comment",
        { src = plugin "kylechui/nvim-surround", version = 'v3' },
        plugin "windwp/nvim-autopairs",
        { src = plugin 'Vonr/align.nvim',        version = 'v2' },
})

-- syntax + lsp
local tsconfig = require("config.treesitter")
local nts = require('nvim-treesitter')
require('nvim-treesitter.configs').setup(tsconfig)

-- fold config
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
autocmd('PackChanged', { callback = function() nts.update() end })

require("config.lsp")()
require('config.lsp.mason')()
require("config.lsp.cmp")()

--file navigation + telescope + harpoon
require("config.telescope")()
-- require("config.harpoon")()

--git
local gitsigns_config = require("config.gitsigns")
require('gitsigns').setup(gitsigns_config)

--utils
local comment_config = require('config.comment')
require('nvim_comment').setup(comment_config)
require("config.navigator")()
require("nvim-surround").setup({})
require("config.npairs")()
require('config.align')()
