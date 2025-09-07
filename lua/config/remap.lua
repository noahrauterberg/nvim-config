local map = vim.keymap.set
vim.g.mapleader = " "

map("n", "<leader>w", ":update<CR>")
map("n", "<leader>q", ":quit<CR>")
map("n", "<leader>e", ":Ex<CR>")
-- map("n", "<leader>ff", ":find ")

-- Move selection up/down
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor stays in place
map("n", "J", "mzJ`z")
map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Preserve buffer on paste over highlighted section
map("x", "<leader>p", "\"_dp")
-- Delete without buffer (into void buffer)
map("n", "<leader>d", "\"_d")
map("v", "<leader>d", "\"_d")

-- yank til EOL
map("n", "Y", "y$")

-- Buffers
map("n", "<leader>bn", ":bnext<CR>")
map("n", "<leader>bp", ":bprevious<CR>")
map("n", "<leader>bd", ":bd<CR>")

-- Splitting (and Resizing in the future)
map("n", "<leader>sv", ":vsplit<CR>") -- split vertically
map("n", "<leader>sh", ":hsplit<CR>") -- split horizontally

-- Window Navigation
map("n", "<C-h>", "<C-w>h") -- move to left window
map("n", "<C-j>", "<C-w>j") -- move to bottom window
map("n", "<C-k>", "<C-w>k") -- move to top window
map("n", "<C-l>", "<C-w>l") -- move to right window

-- Search and replace current file for current word
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- LSP
map("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- goto definition
map("n", "<leader>gS", "<cmd>vsplit | lua vim.lsp.buf.definition()<CR>", opts) -- goto definition in split
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Code actions
map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- Rename symbol
map("n", "<leader>D", "<cmd>lua vim.diagnostic.open_float({ scope = 'line' })<CR>", opts) -- Line diagnostics (float)
map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts) -- Cursor diagnostics
map("n", "<leader>pd", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts) -- previous diagnostic
map("n", "<leader>nd", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts) -- next diagnostic
map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- hover documentation

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
