local keymap = vim.keymap.set local opts = { noremap = true, silent = true }

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader=" "


keymap("i", "kj", "<ESC>", opts)


keymap("n", "<leader>v", "<C-w>v", opts)
keymap("n", "<leader>s", "<C-w>s", opts)
keymap("n", "<leader>q", "<C-w>q", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

--Window Nav
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("n", "<leader>bd", ":bdelete<CR>", opts)

keymap("v", "K :m", "\'<-2<CR>gv", opts)
keymap("v", "J :m", "\'>+1<CR>gv", opts)

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprev<CR>", opts)

--Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

--Comments
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
