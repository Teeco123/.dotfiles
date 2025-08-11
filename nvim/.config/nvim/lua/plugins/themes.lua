return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				on_highlights = function(highlights, colors)
					highlights.LineNr = { fg = "#ff007c" }
					highlights.LineNrAbove = { fg = "#7dcfff" }
					highlights.LineNrBelow = { fg = "#7dcfff" }
					highlights.EndOfBuffer = { fg = "#7dcfff" }
				end
			})

			vim.cmd("colorscheme tokyonight")
		end
	}
}
