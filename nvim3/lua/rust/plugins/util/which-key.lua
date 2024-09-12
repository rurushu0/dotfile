return {
	"folke/which-key.nvim",

	event = "VeryLazy",

	opts = {},

	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,

	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},

	config = function()
		local wk = require("which-key")
		wk.add({
			{
				"<leader>b",
				group = "buffers",
				expand = function()
					return require("which-key.extras").expand.buf()
				end,
				desc = "Buffer number",
			},

			{
				mode = { "n", "v" }, -- NORMAL and VISUAL mode
				{ "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
				{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
			},

			{ "<leader>e", group = "Explorer" }, -- group
			{ "<leader>f", group = "Search" }, -- group
			-- { "<leader>ea", group = "Explorer", desc = "nvim-tree: expand all" },
			-- { "<leader>ec", group = "Explorer", desc = "nvim-tree: collaspe all" },
			{ "<leader>t", group = "Terminal" },
			{ "<leader>tf", group = "Terminal", "<cmd>ToggleTerm direction=float<cr>", desc = "Float" }, -- Floating Terminal
			{
				"<leader>th",
				group = "Terminal",
				"<cmd>ToggleTerm size=10 direction=horizontal<cr>",
				desc = "Horizontal",
			}, -- Horizontal Terminal,
			{ "<leader>tv", group = "Terminal", "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Vertical" }, -- Vertical Terminal
		})
	end,
}
