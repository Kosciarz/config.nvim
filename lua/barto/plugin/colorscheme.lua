local plugin = {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		priority = 1000,
		config = function()
			require("monokai-pro").setup({
				filter = "pro",
				background_clear = {
					"telescope",
					"nvim-tree",
					"bufferline",
				},
			})
			--vim.cmd([[colorscheme monokai-pro]])
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
		"tanvirtin/monokai.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"tiagovla/tokyodark.nvim",
		config = function(opts)
			require("tokyodark").setup(opts)
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			--vim.cmd([[colorscheme tokyonight]])
		end,
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd([[colorscheme sonokai]])
		end,
	},
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
	},
	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme vscode]])
		end,
	},
}

return plugin
