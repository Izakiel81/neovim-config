return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format({ async = true, lsp_fallback = true }) -- Enable LSP fallback
      end,
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      python = { 'isort', 'black' },
      javascript = { 'prettierd', 'prettier' },
      typescript = { 'prettierd', 'prettier' },
      javascriptreact = { 'prettierd', 'prettier' },
      typescriptreact = { 'prettierd', 'prettier' },
      html = { 'prettierd', 'prettier' },
      css = { 'prettierd', 'prettier' },
      scss = { 'prettierd', 'prettier' },
      json = { 'prettierd', 'prettier' },
      yaml = { 'prettierd', 'prettier' },
      markdown = { 'prettierd', 'prettier' },
      dockerfile = { 'prettierd', 'prettier' },
      vue = { 'prettierd', 'prettier' },
    },
    formatters = {
      stylua = {
        command = 'stylua',
        args = { '--indent-type', 'Spaces', '--indent-width', '2', '-' },
      },
      prettier = {
        command = 'prettierd',
        args = { "--stdin-filepath", '$FILENAME', '--tab-width', '2' },
      },
      shfmt = {
        command = 'shfmt',
        args = { '-i', '2', '-w', '$FILENAME' },
      },
      ['clang-format'] = {
        command = 'clang-format',
        args = { '--style={IndentWidth: 2}', '$FILENAME' },
      },
      ['sql-formatter'] = {
        command = 'sql-formatter',
        args = { '--config', '{"tabWidth": 2}', '$FILENAME' },
      },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
