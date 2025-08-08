return{
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- Customize as you see fit
    use_diagnostic_signs = true,
  },
  keys = {
    { "<leader>x", "<cmd>Trouble diagnostics<cr>", desc = "Open diagnostics" },
  },
}
