return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup({
      settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
      },
    })

    local keymap = vim.keymap.set
    local opts = { noremap = true, silent = true }

    keymap("n", "<leader>ha", function()
      harpoon:list():add()
    end, opts)

    keymap("n", "<leader>h", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, opts)

    keymap("n", "<leader>h1", function()
      harpoon:list():select(1)
    end, opts)
    keymap("n", "<leader>h2", function()
      harpoon:list():select(2)
    end, opts)
    keymap("n", "<leader>h3", function()
      harpoon:list():select(3)
    end, opts)
    keymap("n", "<leader>h4", function()
      harpoon:list():select(4)
    end, opts)

    keymap("n", "<C-n>", function()
      harpoon:list():next()
    end, opts)
    keymap("n", "<C-p>", function()
      harpoon:list():prev()
    end, opts)

    pcall(function()
      require("telescope").load_extension("harpoon")
    end)
  end,
}
