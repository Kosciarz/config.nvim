return {
	{
		"loctvl842/monokai-pro.nvim",
		name = "monokai-pro",
		lazy = false,
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
		end,
	},
	{
		"polirritmico/monokai-nightasty.nvim",
		name = "monokai-nightasty",
		lazy = false,
		priority = 1000,
	},
	{
		"tanvirtin/monokai.nvim",
		name = "monokai",
		lazy = false,
		priority = 1000,
	},
	{
		"tiagovla/tokyodark.nvim",
		name = "tokyodark",
		lazy = false,
		priority = 1000,
	},
	{
		"folke/tokyonight.nvim",
		name = "tokyonight",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd.colorscheme("tokyonight-night")
		end,
	},
	{
		"sainnhe/sonokai",
		name = "sonokai",
		lazy = false,
		priority = 1000,
	},
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox",
		lazy = false,
		priority = 1000,
	},
	{
		"Mofiqul/vscode.nvim",
		name = "vscode",
		lazy = false,
		priority = 1000,
	},
	{
		"joshdick/onedark.vim",
		name = "onedark",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("onedark")
		end,
	},
}
