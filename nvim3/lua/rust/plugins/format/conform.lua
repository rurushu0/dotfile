return {
	"stevearc/conform.nvim",

	-- Spec Lazy Loading
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },

	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},

	opts = {
		-- set default options
		default_format_opts = {
			lsp_format = "fallback",
		},

		-- define formatter by file type
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true },
			java = { "google-java-format" },
			bash = { "beautysh" },
			proto = { "buf" },
		},

		-- setup format on-save
		format_on_save = {
			timeout_ms = 500,
		},
	},
}
