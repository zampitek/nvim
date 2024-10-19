return {
    'nvim-treesitter/nvim-treesitter',
    config = true,
    opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "java", "rust" },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
        }
    }
}
