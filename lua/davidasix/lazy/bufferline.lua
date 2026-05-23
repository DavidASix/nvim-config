return {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require('bufferline').setup()
    end,
    keys = {
        { "<leader><Left>",  "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
        { "<leader><Right>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
        { "<leader>w",       "<cmd>bd<cr>",                  desc = "Close buffer" },
    },
}
