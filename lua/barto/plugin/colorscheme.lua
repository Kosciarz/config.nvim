local plugin = {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		priority = 1000,
		config = function()
			require("monokai-pro").setup({
				filter = "pro",
				background_clear = {
					-- "float_win",
					-- "toggleterm",
					"telescope",
					-- "which-key",
					-- "renamer",
					-- "notify",
					"nvim-tree",
					-- "neo-tree",
					"bufferline", -- better used if background of `neo-tree` or `nvim-tree` is cleared
				},
			})
			-- vim.cmd([[colorscheme monokai-pro]])
		end,
	},
	{
		"polirritmico/monokai-nightasty.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("monokai-nightasty").setup()
			--vim.cmd([[colorscheme monokai-nightasty]])
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
			--vim.cmd [[colorscheme tokyodark]]
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}

return plugin
