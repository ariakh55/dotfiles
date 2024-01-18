require('catppuccin').setup({
    flavor = "mocha",
    transparent_background = true
})

vim.cmd.colorscheme("catppuccin-mocha")

vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
