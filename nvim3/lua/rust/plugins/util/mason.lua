return {
	"williamboman/mason.nvim",

	lazy = true,
	cmd = {
		"Mason",
	},

	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}
