return {
  -- lsp config
  { 
    "neovim/nvim-lspconfig",
    dependencies = {
      { "mason-org/mason.nvim", config = function() end }, 
    },
    opts = {
      servers = {
        rust_analyzer = { enabled = false },
      },
    },
    config = function()
      require("mason").setup()
      require("lspconfig").lua_ls.setup{}
    end
  }
}
