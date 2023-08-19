return {
    -- add gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = {

            palette_overrides = {
                bright_green = "#990000",
            },
            overrides = {
                SignColumn = { bg = "#ff9900" },
            },
        },
    },

    -- {
    --
    --     "catppuccin/nvim",
    --     as = "catppuccin",
    -- },

    --    Configure LazyVim to load gruvbox
    {
        "LazyVim/LazyVim",
        -- opts = {
        --     colorscheme = "gruvbox",
        -- },
    },

    -- 高亮

    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vue",
                "bash",
                "html",
                "javascript",
                "json",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "query",
                "regex",
                "typescript",
                "tsx",
                "vim",
                "yaml",
            },
        },
    },
}
