-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local opts = { silent = true, noremap = true }

-- Vertical split
map("n", "<leader><", "<cmd>vsplit<CR>", opts)

-- Search forward with + instead of *
map("n", "+", "*", opts)
-- Remap ö to { for backward paragraph movement
map("n", "ä", "{", opts)

-- Remap ä to } for forward paragraph movement
map("n", "ö", "}", opts)

map("n", "<space>td", ":ToggleTerm dir=%:p:h<CR>") -- open terminal in the directory of the file

-- Remap jj to exit insert mode 
map("i", "jj", "<ESC>", opts)

map("i", "<C-k>", "<Up>", opts)
map("i", "<C-j>", "<Down>", opts)
map("i", "<C-h>", "<Left>", opts)
map("i", "<C-l>", "<Right>", opts)



