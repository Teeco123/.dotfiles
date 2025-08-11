local set = vim.keymap.set

set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Fuzzy find", noremap = true })
set("n", "<C-s>", ":w<CR>", { desc = "Save file" })
set("n", "<C-l>", ":nohlsearch<CR>", { desc = "Clear search results" })

-- Move harlf screen up/down and set cursor center
set("n", "<C-d>", "<C-d>zz", { desc = "Move half down and center" })
set("n", "<C-u>", "<C-u>zz", { desc = "Move half up and center" })
-- Iterate through search results
set("n", "n", "nzz", { desc = "Next search result" })
set("n", "N", "Nzz", { desc = "Previous search result" })
-- Disable arrows in normal Mode
set("n", "<Up>", "<Nop>")
set("n", "<Left>", "<Nop>")
set("n", "<Right>", "<Nop>")
set("n", "<Down>", "<Nop>")
-- Disable arrows in insert Mode
set("i", "<Up>", "<Nop>")
set("i", "<Left>", "<Nop>")
set("i", "<Right>", "<Nop>")
set("i", "<Down>", "<Nop>")
