-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      -- You can add your configuration options here
      panel = {
        enabled = false, -- Set to true to show a side panel with suggestions
      },
      suggestion = {
        enabled = true,
        auto_trigger = true,
        -- You can configure keymaps here
        keymap = {
          accept = "<Tab>", -- Common keymap to accept suggestion
        },
      },
    })
  end,
}
