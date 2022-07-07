local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  relativenumber = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  smartindent = true,
  expandtab = true,
  incsearch = true,
  smartcase = true,
  ignorecase = true,
  ruler = true,
  laststatus = 2,
  termguicolors = true,
  mouse = "a"
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd("syntax on")
