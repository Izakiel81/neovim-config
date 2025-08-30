local lspconfig = require("lspconfig")

local on_attach = function(client, bufnr)
  -- Disable LSP formatting to avoid conflicts with conform.nvim
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false
end

-- Vue Language Server
lspconfig.volar.setup({
  filetypes = { "vue" },
  on_attach = on_attach,
  init_options = {
    typescript = {
      tsdk = vim.fn.expand("~/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"),
    },
  },
})

-- TypeScript/JavaScript
lspconfig.ts_ls.setup({
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" }, -- Include "vue"
  on_attach = on_attach,
})

-- HTML
lspconfig.html.setup({
  filetypes = { "html", "vue" }, -- Include "vue"
  on_attach = on_attach,
})

-- CSS/SCSS
lspconfig.cssls.setup({
  filetypes = { "css", "scss", "less", "vue" }, -- Include "vue"
  on_attach = on_attach,
})

-- Stylelint for CSS/SCSS linting
lspconfig.stylelint_lsp.setup({
  filetypes = { "css", "scss" },
  on_attach = on_attach,
})
