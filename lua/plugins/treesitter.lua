return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",

  config = function()
    local ts = require("nvim-treesitter")

    ts.setup({})

    ts.install({
      "c",
      "go",
      "java",
      "javascript",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "typescript",
      "vim",
      "vimdoc",
    })

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)

        local ft = vim.bo[args.buf].filetype
        if ft ~= "python" and ft ~= "c" then
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end
}
