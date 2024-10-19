return {
    'neovim/nvim-lspconfig',
    lazy = false,
    
    dependencies = {
        'williamboman/mason.nvim',
        {
            'williamboman/mason-lspconfig.nvim',
            config = true,
            opts = {
                ensure_installed = {
                    'bashls',
                    'csharp_ls',
                    'clangd',
                    'ast_grep',
                    'java_language_server',
                    'jsonls',
                    'lua_ls',
                    'pylsp',
                    'rust_analyzer'
                }
            }
        }
    },

    config = function()
        local mason = require('mason')
        local lspconfig = require('lspconfig')
        
        mason.setup()

        local on_attach = function(_, _)
            vim.keymap.set('n', '<leader>rn', vim.lsp.rename)

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
            vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover)
        end

        lspconfig.lua_ls.setup({
            on_attach = on_attach
        })
        lspconfig.clangd.setup({
            on_attach = on_attach
        })
        lspconfig.jsonls.setup({
            on_attach = on_attach
        })

    end,
}
