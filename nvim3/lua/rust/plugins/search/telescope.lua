return {

	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
		"nvim-tree/nvim-web-devicons",
	},

	--------------------------------------------------------------------------------
	--- Setup SPEC
	--------------------------------------------------------------------------------
	opts = {},

	cmd = "Telescope",

	--------------------------------------------------------------------------------
	--- Keymapping
	--------------------------------------------------------------------------------
	keys = function()
		local builtin = require("telescope.builtin")

		return {
			{ "<leader>ff", builtin.find_files, desc = "[F]ind files" },
			{ "<leader>fg", builtin.live_grep, desc = "[L]ive grep files" },
			{ "<leader>fw", builtin.grep_string, desc = "[G]rep focused word" },
			{ "<leader>fc", builtin.colorschemes, desc = "[P]ick colorscheme" },
		}
	end,
}
