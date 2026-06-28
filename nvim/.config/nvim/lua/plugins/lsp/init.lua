return { 
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {}},
    { "mason-org/mason-lspconfig.nvim", opts = {ensure_installed = { "pyright", "rust_analyzer" }}},
  },
  config = function() 
     local lspconfig = require("lspconfig") 
     vim.api.nvim_create_autocmd("LspAttach", {
       callback = function(args)
         local buf = args.buf
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf, desc = "Goto definition" })
         vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = buf, desc = "Goto references" })
         vim.keymap.set("n", "gI", vim.lsp.buf.definition, { buffer = buf, desc = "Goto Implementation" })
         vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { buffer = buf, desc = "Goto T[y]pe Definition" })
         vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = buf, desc = "Goto Declaration" })
       end
     })
  end,
}
