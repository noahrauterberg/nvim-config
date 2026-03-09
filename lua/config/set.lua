vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
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
vim.opt.clipboard = "unnamedplus"

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

vim.opt.termguicolors = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

