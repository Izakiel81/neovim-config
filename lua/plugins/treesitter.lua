return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "javascript",
          "typescript",
          "python",
          "go",
          "rust",
          "html",
          "css",
          "kotlin",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

  {
    "nvim-treesitter/playground",
    keys = {
      { "<leader>ts", ":TSPlaygroundToggle<CR>", desc = "Treesitter Playground" },
    },
  },
}
