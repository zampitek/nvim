vim.g.mapleader = ' '

require('config.lazy')
require('mappings')

vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')

vim.o.background = "dark"
vim.cmd.colorscheme('gruvbox')

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.cursorlineopt = "both"
vim.o.splitright = true
vim.o.splitbelow = true
