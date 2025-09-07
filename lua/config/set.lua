vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.list = true

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.scrolloff = 8
vim.opt.showcmd = true
vim.opt.colorcolumn = "100"
vim.opt.cursorcolumn = false
vim.opt.signcolumn = "yes"

vim.opt.undofile = true
vim.opt.clipboard = "unnamed"

vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.encoding = "UTF-8"
vim.opt.path:append("**")

vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- No automatic comment insertion
vim.cmd([[autocmd FileType * set formatoptions-=ro]])

vim.opt.showmode = false
vim.opt.wrap = false

vim.opt.termguicolors = false
vim.cmd("colorscheme habamax")

