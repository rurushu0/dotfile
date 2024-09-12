return {
	"nvim-treesitter/nvim-treesitter-textobjects",

	lazy = true,

	build = ":TSUpdate",

	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},

	config = function()
		require("nvim-treesitter.configs").setup({
			-- Enable Syntax Aware Text Objects
			textobjects = {
				select = {
					enable = true,
					lookahead = true,

					keymaps = {

						["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
						["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
						["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
						["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

						["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
						["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

						["am"] = {
							query = "@function.outer",
							desc = "Select outer part of a method/function definition",
						},
						["im"] = {
							query = "@function.inner",
							desc = "Select inner part of a method/function definition",
						},
					},
				},

				move = {
					enable = true,
					set_jumps = true,
					go_to_next_start = {
						["]f"] = { query = "@call.outer", desc = "Next function call start" },
						["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
						["]c"] = { query = "@class.outer", desc = "Next class start" },
						["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
						["]l"] = { query = "@loop.outer", desc = "Next loop start" },
					},
				},
			},
		})
	end,
}
