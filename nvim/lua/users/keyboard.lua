local keymap = vim.keymap.set
local opts = { silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader=" "

keymap("i", "kj", "<ESC>", opts)

keymap("n", "<leader>v", "<C-w>v", opts)
keymap("n", "<leader>s", "<C-w>s", opts)
keymap("n", "<leader>q", "<C-w>q", opts)
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("v", "K :m", "\'<-2<CR>gv", opts)
keymap("v", "J :m", "\'>+1<CR>gv", opts)
