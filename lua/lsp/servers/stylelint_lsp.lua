local on_attach = require("lsp.on_attach").setup
return {
  cmd = { "stylelint-lsp", "--stdio" },
  filetypes = { "astro", "css", "html", "less", "scss", "sugarss", "vue", "wxss" },
  root_markers = {
    ".stylelintrc",
    ".stylelintrc.mjs",
    ".stylelintrc.cjs",
    ".stylelintrc.js",
    ".stylelintrc.json",
    ".stylelintrc.yaml",
    ".stylelintrc.yml",
    "stylelint.config.mjs",
    "stylelint.config.cjs",
    "stylelint.config.js",
  },
  settings = {},
  on_attach,
}
