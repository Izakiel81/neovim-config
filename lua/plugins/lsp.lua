return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    local on_attach = function(client, bufnr)

    end

    mason_lspconfig.setup({
      ensure_installed = {
        "html",   
        "cssls",   
        "tsserver", 
        "eslint",  
        "jsonls",
        "bashls", 
        "dockerls",
        "sqlls",
      },

      on_attach = on_attach,
    })
  end,
}
