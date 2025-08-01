return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").load_extension("fzf")
    end,
    keys = {
      {
        "<leader>pf",
        function() require('telescope.builtin').find_files() end,
        mode = "n",
        desc = 'Telescope find files',
      },
      {
        "<C-p>",
        function() require('telescope.builtin').git_files() end,
        mode = "n",
        desc = 'Telescope find git files',
      },
      {
        "<leader>ps",
        function()
          require('telescope.builtin').grep_string({search = vim.fn.input("Grep > ")})
        end,
        mode = "n",
        desc = "Telescope grep string",
      },
    },
  },
}
