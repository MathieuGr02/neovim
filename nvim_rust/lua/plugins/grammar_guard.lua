return {
	"brymer-meneses/grammar-guard.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
		"williamboman/nvim-lsp-installer",
	},
	config = function()
		require("grammar-guard").init()
	end,
}
