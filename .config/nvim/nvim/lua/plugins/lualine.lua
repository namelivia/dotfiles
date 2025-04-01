return {
  -- Lualine
  'nvim-lualine/lualine.nvim',
  version = '*',
  dependencies = {
    'kyazdani42/nvim-web-devicons'
  },
  options = {
    theme = 'dracula-nvim'
  },
  config = function()require('lualine').setup() end
}
