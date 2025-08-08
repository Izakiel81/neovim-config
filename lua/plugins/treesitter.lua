return { 
	{"nvim-treesitter/nvim-treesitter",
	branch = 'master',
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
          },
          highlight = { enable = true },
          indent = { enable = true },
        })
        end,
       },
       {
	"nvim-treesitter/playground",
	keys = {
	  {"<leader>ts", ":TSPlaygroundToggle<CR>", desc = "Treesitter Playground" },
	}
       }
}
