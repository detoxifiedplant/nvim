-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = vim.keymap.set

map("i", "jk", "<esc>l", { desc = "Escape Mode" })

map("n", "<S-q>", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })
map("v", "<S-q>", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move Lines" })
-- map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move Lines" })
-- map("x", "<A-j>", ":move '>+1<CR>gv-gv", { desc = "Move Lines" })
-- map("x", "<A-k>", ":move '<-2<CR>gv-gv", { desc = "Move Lines" })
-- map("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move Lines" })
-- map("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move Lines" })

-- map("n", "p", "p==", { desc = "Better Pasting" })
-- map("n", "P", "P==", { desc = "Better Pasting" })
map("v", "p", '"_dP', { desc = "Better Pasting" })
map("v", "P", '"_dP', { desc = "Better Pasting" })

-- map("n", "<leader>h", "<cmd>noh<cr>", { desc = "Remove Highlited Search" })

map("n", "<leader>sp", ":norm vip<CR>", { desc = "Select Inside Paragraph" })
map("n", "<leader>si", ":norm =i{<CR>", { desc = "Indent Inside Paragraph" })
map("n", "<leader>sf", ":norm V$%<CR>", { desc = "Select Entire Function" })
map("n", "<A-q>", "<cmd>q!<CR>", { desc = "Quit Without Saving" })
map("n", "<A-w>", "<cmd>w<CR>", { desc = "Save File" })

map("n", "<leader>'", "gcc", { remap = true, silent = true, desc = "Comment line" })
map("x", "<leader>'", "gc", { remap = true, silent = true, desc = "Comment selection" })

map({ "n", "v" }, "<leader>sI", function()
    Util.format({ force = true })
end, { desc = "Format" })

map("n", "<leader>uu", "guiw", { desc = "Toggle the word into Lower Case" })
map("n", "<leader>uU", "gUiw", { desc = "Toggle the word into Upper Case" })
