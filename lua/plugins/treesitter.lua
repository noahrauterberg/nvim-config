return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "c",
        "go",
        "java",
        "javascript",
        "json5",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "tsx",
        "typescript",
        "typescriptreact",
        "vim",
        "vimdoc",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)

        local ft = vim.bo[args.buf].filetype
        if ft ~= "python" and ft ~= "c" then
          vim.bo[args.buf].indentexpr = "nvim_treesitter#indent()"
        end
      end,
    })
  end
}
