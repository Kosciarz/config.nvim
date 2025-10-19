return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
		})
		telescope.load_extension("fzf")

		local map = vim.keymap.set
		local builtin = require("telescope.builtin")

		map("n", "<leader>ff", builtin.find_files, {})
		map("n", "<leader>fg", builtin.live_grep, {})
		map("n", "<leader>fb", builtin.buffers, {})
		map("n", "<leader>fh", builtin.help_tags, {})
		map("n", "<leader>fc", builtin.colorscheme, {})
	end,
}
