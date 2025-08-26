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
      vue = { 'prettierd', 'prettier' }, -- Explicitly define vue
    },
    formatters = {
      stylua = {
        command = 'stylua',
        args = { '--indent-type', 'Spaces', '--indent-width', '2', '-' },
      },
      prettierd = {
        command = 'prettierd',
        args = { '$FILENAME', '--tab-width', '2', '--plugin', '@prettier/plugin-vue' }, -- Explicitly include Vue plugin
      },
      prettier = {
        command = 'prettier',
        args = { '--tab-width', '2', '--plugin', '@prettier/plugin-vue', '$FILENAME' }, -- Explicitly include Vue plugin
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
      lsp_fallback = true, -- Enable LSP fallback for Vue if Prettier fails
    },
  },
}
