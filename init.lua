require("config.core")
require("config.lazy")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("clangd")
