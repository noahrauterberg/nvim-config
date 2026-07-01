return {
  {
    'numToStr/Comment.nvim',

    config = function()
      local ts_pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()

      require('Comment').setup {
        pre_hook = function(ctx)
          if vim.bo.filetype == 'terraform' then
            return
          end

          return ts_pre_hook(ctx)
        end,
        padding = true,
        sticky = true,
        ignore = nil,
      }
    end
  },

  {
    'JoosepAlviste/nvim-ts-context-commentstring',

    config = function()
      require('ts_context_commentstring').setup {
        enable_autocmd = false,
      }
    end
  }
}
