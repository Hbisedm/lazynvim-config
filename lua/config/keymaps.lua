-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

local opt = {
    noremap = true,
    silent = true,
}

keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<S-h>", "^", opt)
keymap.set("n", "<S-l>", "g_", opt)
keymap.set("v", "<S-h>", "^", opt)
keymap.set("v", "<S-l>", "g_", opt)

keymap.set("n", "<S-j>", "5j", opt)
keymap.set("n", "<S-k>", "5k", opt)
keymap.set("v", "<S-j>", "5j", opt)
-- disabled default feat 'K' of neovim/nvim-lspconfig
keymap.set("v", "<S-k>", "5k", opt)

keymap.set("n", "<leader>wh", "<C-W>h", { desc = "go to left window ", remap = true })
keymap.set("n", "<leader>wj", "<C-W>j", { desc = "go to lower window ", remap = true })
keymap.set("n", "<leader>wk", "<C-W>k", { desc = "go to upper window ", remap = true })
keymap.set("n", "<leader>wl", "<C-W>l", { desc = "go to right window ", remap = true })

-- 应该在lsp配置里面配置gh

-- local keys = require("lazyvim.plugins.lsp.buf.hover").get()
--
-- keymap.set("n", "gh", keys, { remap = true })

-- local term = require("toggleterm")

keymap.set("n", "<c-,>", "<cmd>ToggleTerm<cr>", { desc = "open term", remap = true })
keymap.set("t", "<C-,>", "<cmd>close<cr>", { desc = "Hide term" })
