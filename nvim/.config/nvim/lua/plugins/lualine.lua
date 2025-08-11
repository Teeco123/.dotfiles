return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local colors = {
				blue = "#7dcfff",
				dblue = "#7aa2f7",

				pink = "#ff007c",
				dpink = "#c9166d",

				green = "#0ee64b",
				dgreen = "#1ea845",

				azure = "#12dade",
				dazure = "#21b5b8",
			}

			local theme = {
				normal = {
					a = { bg = colors.dblue, fg = colors.dblue, gui = "bold" },
					b = { bg = colors.blue, fg = colors.blue },
					c = { bg = colors.blue, fg = colors.blue },
				},
				insert = {
					a = { bg = colors.dpink, fg = colors.dpink, gui = "bold" },
					b = { bg = colors.pink, fg = colors.pink },
					c = { bg = colors.pink, fg = colors.pink },
				},
				visual = {
					a = { bg = colors.dazure, fg = colors.dazure, gui = "bold" },
					b = { bg = colors.azure, fg = colors.azure },
					c = { bg = colors.azure, fg = colors.azure },
				},
				replace = {
					a = { bg = "#fb4934", fg = "#282828", gui = "bold" },
					b = { bg = "#504945", fg = "#ebdbb2" },
					c = { bg = "#282828", fg = "#ebdbb2" },
				},
				command = {
					a = { bg = colors.dgreen, fg = colors.dgreen, gui = "bold" },
					b = { bg = colors.green, fg = colors.green },
					c = { bg = colors.green, fg = colors.green },
				},
				inactive = {
					a = { bg = "#333333", fg = "#333333", gui = "bold" },
					b = { bg = "#333333", fg = "#333333" },
					c = { bg = "#333333", fg = "#333333" },
				},
			}

			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = theme,
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = true,
					always_show_tabline = true,
					globalstatus = false,
					refresh = {
						statusline = 100,
						tabline = 100,
						winbar = 100,
					},
				},
				sections = {
					lualine_a = {
						{
							"fileformat",
							symbols = {
								unix = "",
								dos = "",
								mac = "",
							},
						},
						"mode",
					},
					lualine_b = {
						{
							"cwd",
							fmt = function()
								local cwd = vim.fn.getcwd()
								local last_dir = cwd:match("([^/\\]+)$")
								return last_dir
							end,
						},
						"filename",
						"branch",
					},
					lualine_c = { "diagnostics" },
					lualine_x = {
						"lsp_status",
						{
							"filetype",
							colored = false,
							icon_only = false,
							icon = { align = "left" },
						},
					},
					lualine_y = { "location" },
					lualine_z = { "os.date('%I:%M %p')" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = {},
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
}
