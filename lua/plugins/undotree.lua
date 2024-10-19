return {
    'mbbill/undotree',
    init = function()
        vim.keymap.set('n', '<leader>c', '<cmd>UndotreeToggle<cr>')
    end
}
