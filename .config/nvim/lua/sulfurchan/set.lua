vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4;
vim.opt.shiftwidth = 4;
vim.opt.softtabstop = 4;
vim.opt.expandtab = true;

vim.opt.autoindent = true;
vim.opt.smartindent = true;
vim.opt.cindent = true;
vim.opt.smarttab = true;

vim.opt.wrap = false;

vim.opt.swapfile = false;
vim.opt.backup = false;
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir";
vim.opt.undofile = true;

vim.opt.hlsearch = false;
vim.opt.incsearch = true;

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.iskeyword:append("-")

vim.opt.shortmess:append("c")
vim.opt.signcolumn = "yes"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.encoding = "UTF-8"

vim.opt.cursorline = true

vim.opt.colorcolumn = "102";
vim.opt.mouse = "a";

