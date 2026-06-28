return { 
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "mason-org/mason.nvim", opts = {}},
    { "mason-org/mason-lspconfig.nvim", opts = {ensure_installed = { "pyright", "rust_analyzer" }}},
  },
  config = function() 
     local lspconfig = require("lspconfig") 
     vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      signs = { text = {
        [vim.diagnostic.severity.ERROR] = '❗️',
        [vim.diagnostic.severity.WARN] = '⚠️',
        [vim.diagnostic.severity.INFO] = 'ℹ️',
        [vim.diagnostic.severity.HINT] = '🔎',
      }},
      float = {
        source = "always",
        border = "rounded",
      },
     })

     vim.api.nvim_create_autocmd("LspAttach", {
       callback = function(args)
         local buf = args.buf
         vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = buf, desc = "Goto definition" })
         vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { buffer = buf, desc = "Goto references" })
         vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = buf, desc = "Goto Implementation" })
         vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { buffer = buf, desc = "Goto T[y]pe Definition" })
         vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = buf, desc = "Goto Declaration" })
         vim.keymap.set("i", "<c-p>", vim.lsp.buf.signature_help, { buffer = buf, desc = "Signature hints" })
         vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = buf, desc = "Code Action" })
         vim.keymap.set("n", "<leader>cc", vim.lsp.codelens.run, { buffer = buf, desc = "Run Codelens" })
         vim.keymap.set("n", "<leader>cC", vim.lsp.codelens.refresh, { buffer = buf, desc = "Refresh and Display Codelens" })
         vim.keymap.set('n', '<Space>d', vim.diagnostic.open_float, { desc = "Show diagnostics" })
       end
     })
  end,
}
