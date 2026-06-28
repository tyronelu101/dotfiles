return {
  {
    "neovim/nvim-lspconfig",
    -- event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "mason-org/mason.nvim", opts = {}},
      { "mason-org/mason-lspconfig.nvim", 
      	opts = {
	ensure_installed = {"pyright", "rust_analyzer"}
      	}
      },
    },
    
  },
}
