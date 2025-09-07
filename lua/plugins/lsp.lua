return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable("gopls")
    local lspconfig = require("lspconfig")
    lspconfig.gopls.setup({
      settings = {
        gopls = {
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          gofumpt = true,
        },
      },
    })
  end,
}

