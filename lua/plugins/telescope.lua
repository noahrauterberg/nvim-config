return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5",
  dependencies = { "nvim-lua/plenary.nvim" },
  module = "telescope",

  config = function()
    require('telescope').setup({
      defaults = {
        path_display = { "truncate" },
        file_ignore_patterns = {
          ".git/*",
          "dist/*",
          "build/*",
          "target/*",
          "node_modules/*",
        },
      },
    })

    local preview_utils = require("telescope.previewers.utils")
        preview_utils.ts_highlighter = function(bufnr, ft)
            local lang = vim.treesitter.language.get_lang(ft) or ft
            if not lang or lang == "" then
                return false
            end

            return pcall(vim.treesitter.start, bufnr, lang)
        end

    local builtin = require('telescope.builtin')

    vim.keymap.set("n", "<leader>fg", builtin.git_files, {})
    vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
    vim.keymap.set("n", "<leader>gs", builtin.git_status, {})

    -- More LSP related keymaps
    vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})
    vim.keymap.set("n", "<leader>ws", builtin.lsp_workspace_symbols, {})
    vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, {})
    vim.keymap.set("n", "<leader>gD", builtin.lsp_definitions, {})

    vim.keymap.set('n', '<leader>pws', function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set('n', '<leader>pWs', function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
  end
}
