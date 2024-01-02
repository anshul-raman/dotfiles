-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- delete single character without copying into register
keymap("n", "x", '"_x', opts)

-- page scroll with auto center
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- clear search highlights
keymap("n", "<leader>nh", ":nohl<CR>", opts)
