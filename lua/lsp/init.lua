local servers = {
  "lua_ls",
  "ts_ls",
  "vue_ls",
  "html",
  "cssls",
  "stylelint_lsp",
  "dockerls",
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, server in ipairs(servers) do
  local ok, conf = pcall(require, "lsp.servers." .. server)
  if ok then
    vim.lsp.config[server] = conf
  else
    vim.notify("Failed to load LSP config: " .. server, vim.log.levels.WARN)
  end
end

-- Enable all the servers
vim.lsp.enable(servers)
