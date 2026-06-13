return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = true,
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  lazy = false, -- neo-tree will lazily load itself
  ---@module "neo-tree"
  ---@type neotree.Config?
  opts = {
    -- fill any relevant options here
  },
  keys = {
    {
      "<leader>fe",
      function()
        local root = vim.fn.getcwd()
        require("neo-tree.command").execute({ toggle = true, dir = root })
      end,
      desc = "Explorer Neo-tree (Root Dir)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer Neo-tree (cwd)",
    },
    { "<leader>e", "<leader>fe", desc = "Explorer Neo-tree (Root Dir)", remap = true },
    { "<leader>E", "<leader>fE", desc = "Explorer Neo-tree (cwd)", remap = true }, 
  },
}
