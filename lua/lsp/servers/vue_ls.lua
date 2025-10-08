local on_attach = require("lsp.on_attach").setup

---@type vim.lsp.Config
return {
  cmd = { "vue-language-server", "--stdio" },
  filetypes = { "vue", "javascript", "typescript", "javascriptreact", "typescriptreact" },
  root_markers = {
    "package.json",
    "tsconfig.json",
    "jsconfig.json",
    "vue.config.js",
    ".git",
  },

  init_options = {
    typescript = {
      -- Ensure it points to your local TypeScript installation
      tsdk = vim.fn.getcwd() .. "/node_modules/typescript/lib",
    },
  },

  settings = {
    vue = {
      completion = {
        autoImport = true, -- enable auto-import suggestions
      },
      format = {
        enable = true,
      },
      codeLens = {
        enable = true,
      },
      references = {
        includeDeclaration = true,
      },
      updateImportsOnFileMove = {
        enabled = "always",
      },
      telemetry = {
        enable = false,
      },
    },
  },

  on_init = function(client)
    --- Retry mechanism to wait for TS LSP
    local function link_ts()
      local ts_client = vim.lsp.get_clients({ name = "ts_ls" })[1]
        or vim.lsp.get_clients({ name = "vtsls" })[1]
        or vim.lsp.get_clients({ name = "typescript-tools" })[1]

      if ts_client then
        client.handlers["tsserver/request"] = function(_, result, ctx)
          local param = result and result[1]
          if not param then
            return
          end
          local id, command, payload = unpack(param)

          ts_client:exec_cmd({
            title = "vue:forward-ts",
            command = "typescript.tsserverRequest",
            arguments = { command, payload },
          }, { bufnr = ctx.bufnr }, function(_, response)
            client:notify("tsserver/response", { { id, response and response.body } })
          end)
        end

        vim.notify("✅ Vue LSP linked with TypeScript client.", vim.log.levels.INFO)
      else
        vim.defer_fn(link_ts, 250) -- check again in 250ms
      end
    end

    link_ts()
  end,

  on_attach = on_attach,
}
