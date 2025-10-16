local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local servers = {
  "pyright",
  "lua_ls",
  "ts_ls",
  "vue_ls",
  "html",
  "cssls",
  "stylelint_lsp",
  "dockerls",
}

for _, server in ipairs(servers) do
  local ok, conf = pcall(require, "lsp.servers." .. server)
  if not ok then
    vim.notify("Failed to load LSP config: " .. server, vim.log.levels.WARN)
  else
    conf.capabilities = vim.tbl_deep_extend("force", capabilities, conf.capabilities or {})
    vim.lsp.config[server] = conf
  end
end

-- Enable all the servers
vim.lsp.enable(servers)
