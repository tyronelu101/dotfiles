require("config.lazy")

--Enables absolute line numbers
vim.wo.number = true
--Enables relative number(combined with absolute, current line will be absolute while rest is relative)
vim.wo.relativenumber = true

--How many spaces a tab is \t when displayed
vim.opt.tabstop = 2
--How many spaces when auto-indenting
vim.opt.shiftwidth = 2
--Converts all tabs to spaces
vim.opt.expandtab = true
--How many spaces pressing Tab or Backspace while in insert mode
vim.bo.softtabstop = 2


vim.cmd.colorscheme("tokyonight")
