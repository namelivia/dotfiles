-- LSP configuration for Neovim
-- mason and mason-lspconfig are used to manage LSP servers
require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").pyright.setup {}
