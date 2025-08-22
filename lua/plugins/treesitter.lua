return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({

				ensure_installed = {
					"lua",
					"javascript",
					"typescript",
					"python",
					"go",
					"html",
					"css",
					"vue",
					"json",
					"bash",
					"markdown",
					"markdown_inline",
					"yaml",
					"sql",
					"dockerfile",
					"c",
					"cpp",
					"rust",
					"java",
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
