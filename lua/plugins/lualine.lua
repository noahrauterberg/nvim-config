return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup({
      options = {
        theme = 'horizon',
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'filetype', 'lsp_status' },
        lualine_z = { 'location' }
      },
    })
  end
}

