return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
      branch = "harpoon2",
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
  end,
  keys = {
    { "<leader>a", function() require("harpoon"):list():add() end, mode = "n", desc = "Harpoon add file" },
    { "<C-e>", function() require("harpoon.ui"):toggle_quick_menu(require("harpoon"):list()) end, mode = "n", desc = "Harpoon toggle UI" },
    { "<C-h>", function() require("harpoon"):list():select(1) end, mode = "n", desc = "Harpoon select file 1" },
    { "<C-t>", function() require("harpoon"):list():select(2) end, mode = "n", desc = "Harpoon select file 2" },
    { "<C-n>", function() require("harpoon"):list():select(3) end, mode = "n", desc = "Harpoon select file 3" },
    { "<C-s>", function() require("harpoon"):list():select(4) end, mode = "n", desc = "Harpoon select file 4" },
    { "<C-S-P>", function() require("harpoon"):list():prev() end, mode = "n", desc = "Harpoon previous file" },
    { "<C-S-N>", function() require("harpoon"):list():next() end, mode = "n", desc = "Harpoon next file" },
  },
}
