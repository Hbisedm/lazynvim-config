-- LSP keymaps
return {
    {
        "neovim/nvim-lspconfig",
        init = function()
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            -- disable a keymap
            keys[#keys + 1] = { "K", false }
        end,
        opts = {
            -- make sure mason installs the server
            servers = {
                ---@type lspconfig.options.tsserver
                tsserver = {
                    keys = {
                        { "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
                        { "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
                    },
                    settings = {
                        typescript = {
                            format = {
                                indentSize = vim.o.shiftwidth,
                                convertTabsToSpaces = vim.o.expandtab,
                                tabSize = vim.o.tabstop,
                            },
                        },
                        javascript = {
                            format = {
                                indentSize = vim.o.shiftwidth,
                                convertTabsToSpaces = vim.o.expandtab,
                                tabSize = vim.o.tabstop,
                            },
                        },
                        completions = {
                            completeFunctionCalls = true,
                        },
                    },
                },
                -- @type volar
                volar = {
                    autoClosingTags = true,
                    autoCreateQuotes = true,
                },
            },
            setup = {
                tsserver = function(_, opts)
                    require("typescript").setup({ server = opts })
                    return true
                end,
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "shellcheck",
                "vue-language-server",
                "eslint_d",
                "css-lsp",
                "prettier",
                "prettierd",
                "typescript-language-server",
            },
        },
    },
}
