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
		end,
	},
	{
		"polirritmico/monokai-nightasty.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("monokai-nightasty").setup()
		end,
	},
	{
		"tiagovla/tokyodark.nvim",
		config = function(_, opts)
			require("tokyodark").setup(opts) -- calling setup is optional
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
	},
}

return plugin
