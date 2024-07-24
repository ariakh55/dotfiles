local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<leader>a", function () harpoon:list():add() end)
vim.keymap.set("n", "<M-a>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<leader>hh", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>ht", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>hn", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>hl", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>P", function() harpoon:list():prev() end)
vim.keymap.set("n", "<leader>N", function() harpoon:list():next() end)
