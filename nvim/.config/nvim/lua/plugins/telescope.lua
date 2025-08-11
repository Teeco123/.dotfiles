return {
	{
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },

config = function()
			require("telescope").setup({
				on_clear = function() end,
pickers = {
      find_files = {
        find_command = {'rg', '--files', '--hidden', '-g', '!.git'},
        layout_config = {
          height = 0.70
        }
      },
		}
			})
		end,
	},
}
