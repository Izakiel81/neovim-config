require("config")
require("mason").setup()
require("mason-lspconfig").setup {
    automatic_enable = {
        "lua_ls",
        "vimls",
	"ts_ls"
    }
}
require('lspconfig').ts_ls.setup {
  filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
        languages = { "vue" },
      },
    },
  },
}
