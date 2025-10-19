return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Helper for creating keymaps

		local api = require("nvim-tree.api")

		-- Global keymappings
		vim.keymap.set("n", "<leader>ee", function()
			api.tree.toggle({ path = vim.uv.cwd() })
		end, { desc = "Open or close the tree" })

		require("nvim-tree").setup({
			on_attach = function(bufnr)
				-- Default mappings (you can remove these if you want)
				api.config.mappings.default_on_attach(bufnr)

				local function opts(desc)
					return { desc = "NvimTree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
				end

				-- Custom mappings
				vim.keymap.set("n", "<leader>ef", api.tree.focus, opts("Focus the tree"))
				vim.keymap.set("n", "<leader>er", api.tree.reload, opts("Reload the tree"))
				vim.keymap.set("n", "<C-t>", api.tree.change_root_to_parent, opts("Up One Level"))
				vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
				vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
				vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
				vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
			end,
		})
	end,
}
