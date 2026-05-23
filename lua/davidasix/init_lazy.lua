local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Add the path to our lazy install to the run time config
vim.opt.rtp:prepend(lazypath)

-- Import my extensions etc
require("lazy").setup({
    spec ="davidasix.lazy",
    change_detection = { notify = false }
})
