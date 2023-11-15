return {
  -- Nvim tree
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    -- Icons
    'kyazdani42/nvim-web-devicons',
  },
  config = function()
    require'nvim-tree'.setup{}
  end
}
