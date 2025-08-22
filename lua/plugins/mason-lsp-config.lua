return {
  "mason-org/mason-lspconfig.nvim",
  opts = { "lua_ls", "vimls", "ts_ls", "pyright", "gopls", "html", "cssls", "jsonls", "bshls" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "neovim/nvim-lspconfig",
  },
}
