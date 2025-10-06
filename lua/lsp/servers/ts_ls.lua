local on_attach = require("lsp.on_attach").setup

return {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
  init_options = {
    hostInfo = "neovim",
    preferences = {
      importModuleSpecifierPreference = "relative",
      quotePreference = "single",
    },
  },
  settings = {},
  on_attach = on_attach,
}
