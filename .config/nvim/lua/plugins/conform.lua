return {
	{
		"stevearc/conform.nvim",
		lazy = true,
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				swift = { "swift_format", "swiftlint" },
				bash = { "shfmt" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				typescript = { "prettierd", "prettier", stop_after_first = true },
				svelte = { "prettierd", "prettier", stop_after_first = true },
			},
			formatters = {
				swift_format = {
					command = "swift-format",
					args = { "--in-place", "$FILENAME" },
				},
				swiftlint = {
					command = "swiftlint",
					args = { "--fix", "--format", "--quiet", "$FILENAME" },
					stdin = false,
				},
			},

			-- Optional: Format on save
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			},
		},
	},
}
