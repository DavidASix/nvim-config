
local map = vim.keymap.set

-- Search for files by path / file name and open them
map("n", "<leader>o", "<cmd>Telescope find_files<cr>")
-- grep through the whole folder tree, returning the files where the search term appears
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")

