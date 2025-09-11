require("config")
require("mason").setup()
require("mason-lspconfig").setup {
  automatic_enable = {
    "lua_ls",
    "vimls",
    "ts_ls"
  }
}
require('nvim-highlight-colors').setup({})
