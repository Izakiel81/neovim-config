return {
  'stevearc/conform.nvim',
  event = {'BufWritePre'},
  cmd = {'ConformInfo'},
  keys = {{'<leader>f', function() require('conform').format({async = true, lsp_format = 'never'}) end, desc = '[F]ormat buffer'}},
  opts = {
    formatters_by_ft = {
      lua = {'stylua'},
      python = {'isort', 'black'},
      ['javascript,typescript,javascriptreact,typescriptreact,html,css,scss,json,yaml,markdown,dockerfile,vue'] = {'prettierd', 'prettier'},
      bash = {'shfmt'},
      go = {'gofumpt'},
      rust = {'rustfmt'},
      ['c,cpp'] = {'clang-format'},
      java = {'google-java-format'},
      sql = {'sql-formatter'}
    },
    formatters = {
      stylua = {command = 'stylua', args = {'--indent-type', 'Spaces', '--indent-width', '2', '-'}},
      prettierd = {command = 'prettierd', args = {'$FILENAME', '--tab-width', '2'}},
      prettier = {command = 'prettier', args = {'--tab-width', '2', '$FILENAME'}},
      shfmt = {command = 'shfmt', args = {'-i', '2', '-w', '$FILENAME'}},
      ['clang-format'] = {command = 'clang-format', args = {'--style={IndentWidth: 2}', '$FILENAME'}},
      ['sql-formatter'] = {command = 'sql-formatter', args = {'--config', '{"tabWidth": 2}', '$FILENAME'}}
    }
  }
}
