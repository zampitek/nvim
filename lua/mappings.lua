-- Opens Neovim's builtin file explorer
vim.keymap.set('n', '<leader>e', '<cmd>Ex<cr>', 
    { desc = 'Open builtin file explorer' })

vim.keymap.set('n', '<C-l>', '<cmd>Lazy<cr>',
    { desc = 'Open Laxy.vim' })

vim.keymap.set('n', '<C-s>', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<C-b>', '<cmd>split<cr>')
