return {
  "folke/tokyonight.nvim",
  lazy = false,
  opts = {
    style = "moon", -- options: "storm", "moon", "night", "day"
    transparent = false,
  },
  config = function()
    vim.cmd([[colorscheme tokyonight]])
  end,
}
