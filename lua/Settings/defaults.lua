-- number
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true


-- tab indents
vim.opt.smartindent = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- no highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- scrolloff
vim.opt.scrolloff = 8

-- cursor
-- vim.opt.guicursor = ""

-- nowrap
vim.opt.wrap = true

-- no swapfile
vim.opt.swapfile = false

-- cursorline
vim.opt.cursorline = true

vim.opt.mouse = ""

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.api.nvim_create_user_command('Q', 'q', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.opt.conceallevel = 1
