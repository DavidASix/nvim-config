
local map = vim.keymap.set

-- Navigate buffers
map("n", "<leader><Left>", "<cmd>BufferLineCyclePrev<cr>")
map("n", "<leader><Right>", "<cmd>BufferLineCycleNext<cr>")

-- Close current buffer
map("n", "<leader>w", "<cmd>bd<cr>")


