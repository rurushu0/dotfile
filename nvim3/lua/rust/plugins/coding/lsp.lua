return {
	"neovim/nvim-lspconfig",

	config = function()
		local lsp = require("lspconfig")

		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		lsp.zls.setup({
			capabilities = capabilities,
		})
	end,
}
