require('catppuccin').setup({
    flavor = "mocha",
    transparent_background = false
})

require('monokai-pro').setup({
    devicons = true,
})

vim.cmd.colorscheme("monokai-pro-classic")

-- Uncomment to have transparent_background
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
