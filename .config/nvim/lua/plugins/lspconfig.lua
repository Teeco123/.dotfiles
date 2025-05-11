return {
	{
		"neovim/nvim-lspconfig",
		lazy = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("lspconfig").lua_ls.setup({})
			require("lspconfig").clangd.setup({
				cmd = { "clangd", "--clang-tidy" },
			})
			require("lspconfig").svelte.setup({})
			require("lspconfig").ts_ls.setup({})
			require("lspconfig").sourcekit.setup({})
			require("lspconfig").bashls.setup({
				filetype = { "bash", "sh", "conf" },
			})
		end,
	},
}
