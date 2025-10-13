local on_attach = require("lsp.on_attach").setup

---@type vim.lsp.Config
return {
  cmd = { "docker-langserver", "--stdio" },
  filetypes = { "dockerfile" },
  root_markers = { "Dockerfile", ".dockerignore" },
  settings = {
    docker = {
      languageserver = {
        diagnostics = { enabled = true },
        hover = { enabled = true },
      },
    },
  },
  on_attach = on_attach,
}
