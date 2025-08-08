return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', {"nvim-telescope/telescope-fzf-native.nvim", build = "make" }},
    keys = {
 	{
		"<leader>pf",
		function() require('telescope.builtin').find_files() end,
		mode = "n",
		desc = "Telescope find files"
	},
	{
		"<C-p>",
		function() require('telescope.builtin').git_files() end,
		mode = "n",
		desc = "Telescope find git files"
	},
	{
		"<leader>ps",
		function() require('telescope.builtin').grep_string({search = vim.fn.input("Grep > ")})
		end,
		mode = "n",
		desc = "Telescope grep string"
	}
    }
}
