return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>",  desc = "Find Files (Root Dir)" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find Files (Grep)},
      { "<leader>fb", "<cmd>Telescope Telescope buffers", desc = "Find Files (Buffer)}
    },
} 
