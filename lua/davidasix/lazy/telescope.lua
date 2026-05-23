return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>o",  "<cmd>Telescope find_files<cr>",  desc = "Find files" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>",   desc = "Live grep" },
        { "<leader>gs", "<cmd>Telescope git_status<cr>",  desc = "Git status" },
    },
}
