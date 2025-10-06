-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = true,
        auto_trigger = false, -- only show when manually requested
        keymap = {
          accept = "<Tab>",
          next = "<C-n>",
          prev = "<C-p>",
          dismiss = "<C-]>",
        },
      },
    })

    -- ✅ Manual trigger for Copilot suggestion
    -- This binds <C-l> (Ctrl+L) to manually request a suggestion
    vim.keymap.set("i", "<C-l>", function()
      require("copilot.suggestion").next()
    end, { desc = "Trigger Copilot suggestion" })
  end,
}

