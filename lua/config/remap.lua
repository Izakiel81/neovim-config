vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open neovim file explorer" })

vim.keymap.set({ "n", "v" }, "<C-c>", [["+y]], { desc = "Copy to Clipboard" })
vim.keymap.set({ "n", "v" }, "<C-v>", [["+p]], { desc = "Paste from Clipboard" })
vim.keymap.set("i", "<C-v>", [[<C-r>+]], { desc = "Paste from Clipboard in Insert" })
