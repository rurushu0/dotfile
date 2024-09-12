return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		-- Disable netrw by faking it is already loaded
		vim.g.loaded_netrwPlugin = 1
		vim.g.loaded_netrw = 1

		require("nvim-tree").setup({
			view = {
				relativenumber = false,
			},

			-- change folder arrow icons
			renderer = {
				indent_markers = {
					enable = true,
				},
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
					},
				},
			},

			-- actions
			actions = {
				open_file = {
					window_picker = { enable = false },
				},
			},

			-- filters
			filters = {
				custom = {
					"^\\.git$",
					".DS_Store",
					"lazy-lock.json",
					-- zig
					".zig-cache",
				},
			},
		})
	end,

	keys = {
		{ "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "[F]ile exploer: Toggle" },
		{
			"<leader>ea",
			function()
				require("nvim-tree.api").tree.expand_all()
			end,
			desc = "[F]ile exploer: Expand all",
		},
		{ "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", desc = "[F]ile exploer: Toggle current file" },
		{ "<leader>et", "<cmd>NvimTreeFocus<CR>", desc = "[F]ile exploer: focus on tree" },
		{ "<leader>ec", "<cmd>NvimTreeCollapse<CR>", desc = "[F]ile exploer: Collapse all" },
		{ "<leader>er", "<cmd>NvimTreeRefresh<CR>", desc = "[F]ile exploer: Refresh" },
	},
}
