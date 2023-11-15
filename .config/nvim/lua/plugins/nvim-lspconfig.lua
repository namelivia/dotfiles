return {
  -- nvim-lspconfig
  'neovim/nvim-lspconfig',
  version = '*',
  dependencies = {
    -- Automatically install LSP servers
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',

    -- Status updates for LSP
    'j-hui/fidget.nvim',
  },
  config = function()
    require"fidget".setup{}
    require('mason').setup{}
    require("mason-lspconfig").setup {
      ensure_installed = { "tsserver" },
    }
    require'lspconfig'.tsserver.setup{}
  end
}
