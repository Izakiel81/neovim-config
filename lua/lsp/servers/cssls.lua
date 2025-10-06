local on_attach = require("lsp.on_attach").setup

return {
  cmd = { "vscode-css-language-server", "--stdio" },
  filetypes = { "css", "scss", "less" },
  init_options = {
    provideFormatter = true,
  },
  root_markers = { "package.json", ".git" },
  settings = {
    css = {
      validate = true,
    },
    less = {
      validate = true,
    },
    scss = {
      validate = true,
    },
  },
  on_attach,
}
