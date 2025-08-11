local opt = vim.opt
local diag = vim.diagnostic

opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.tabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.clipboard = "unnamedplus"
opt.mouse = ""
opt.mousescroll = "ver:0,hor:0"

diag.config({
	virtual_text = true,
	signs = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

vim.filetype.add({
	extension = {
		fragment = "glsl",
		vertex = "glsl",
		compute = "glsl",
	},
})
