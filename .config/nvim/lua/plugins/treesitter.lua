return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = true,
		event = "BufEnter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"bash",
					"c",
					"cpp",
					"lua",
					"javascript",
					"typescript",
					"css",
					"scss",
					"html",
					"svelte",
					"glsl",
					"swift",
				},
			})
		end,
	},
}
