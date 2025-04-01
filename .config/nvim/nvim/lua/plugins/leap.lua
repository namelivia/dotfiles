return {
  -- Leap for movement
  {
    "ggandor/leap.nvim",
    config = function() require("leap").set_default_keymaps() end
  },
}
