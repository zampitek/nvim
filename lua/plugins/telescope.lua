return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    init = function()
        vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<cr>', { desc = 'Telescope buffers' })
    end
}
