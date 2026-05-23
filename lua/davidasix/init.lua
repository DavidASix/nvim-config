vim.g.mapleader = " " -- Set leader key before Lazy
require("davidasix.init_lazy")
require("davidasix.remapper")

-- Add relative line numbers
vim.wo.relativenumber = true
-- Apply the color scheme
vim.cmd.colorscheme("tokyonight")
