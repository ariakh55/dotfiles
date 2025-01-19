vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("n", "<C-s>", ":w<CR>");
vim.keymap.set("n", "<C-S-s>", ":wa<CR>");
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>");
vim.keymap.set("i", "<C-S-s>", "<ESC>:wa<CR>");
vim.keymap.set("n", "<ESC>", ":noh<CR>", { silent = true });
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

vim.keymap.set("n", "<leader>fY", "<cmd>!echo \"%\" | xclip -i -selection clipboard<CR><CR>", { silent = true })

-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)

vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("i", "<S-Tab>", "<C-d>")
vim.keymap.set("v", "<S-Tab>", "<S-<>")
vim.keymap.set("v", "<Tab>", "<S->>")

vim.keymap.set("n", "<leader>bn", ":enew<CR>", { silent = true })
vim.keymap.set("n", "<leader>bx", ":bd<CR>", { silent = true })

vim.keymap.set("n", "<leader>+", "<C-a>")
vim.keymap.set("n", "<leader>-", "<C-x>")

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>se", "<C-w>=")
vim.keymap.set("n", "<leader>sx", ":close<CR>")

vim.keymap.set("n", "<leader>to", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tn", ":tabclose<CR>")

vim.keymap.set("n", "<leader>]", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>[", ":bprevious<CR>", { silent = true })

vim.keymap.set("n", ")", vim.cmd.GitGutterNextHunk)
vim.keymap.set("n", "(", vim.cmd.GitGutterPrevHunk)

vim.keymap.set("n", "<leader>r", vim.cmd.Filename)
