-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = vim.keymap.set

map("i", "jk", "<esc>l", { desc = "Escape Mode" })
map("n", "cw", "ciw", { desc = "Change Inside Word" })
map("n", "cW", "ciW", { desc = "Change Inside WORD" })

-- delete buffer
map({"n", "v", "x"}, "<S-q>", "<CMD>bdelete<CR>", { desc = "Delete Buffer" })
map({"n", "v", "x"}, "<A-q>", "<CMD>bdelete<CR>", { desc = "Delete Buffer" })

-- better pasting
map("v", "p", '"_dP', { desc = "Better Pasting" })
map("v", "P", '"_dp', { desc = "Better Pasting" })

-- map({"n","x"}, "p", "<Plug>(YankyPutAfter)")
-- map({"n","x"}, "P", "<Plug>(YankyPutBefore)")
-- map({"n","x"}, "gp", "<Plug>(YankyGPutAfter)")
-- map({"n","x"}, "gP", "<Plug>(YankyGPutBefore)")
-- map("n", "<c-y>", "<CMD>YankyRingHistory<CR>")
-- map("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
-- map("n", "<c-n>", "<Plug>(YankyNextEntry)")

-- page down while setting cursor in middle
map("n", "<C-d>", "<C-d>zz", { desc = "Half Page Down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half Page Up" })

-- move lines
map("x", "J", ":move '>+1<CR>gv-gv", { desc = "Move Lines" })
map("x", "K", ":move '<-2<CR>gv-gv", { desc = "Move Lines" })
map("n", "<A-j>", "<CMD>m .+1<CR>==", { desc = "Move down" })
map("n", "<A-k>", "<CMD>m .-2<CR>==", { desc = "Move up" })
map("i", "<A-j>", "<esc><CMD>m .+1<CR>==gi", { desc = "Move down" })
map("i", "<A-k>", "<esc><CMD>m .-2<CR>==gi", { desc = "Move up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move up" })

-- custom
map("n", "<leader>sp", "Vip", { desc = "Select Inside Paragraph" })
map("n", "<leader>sf", "V$%", { desc = "Select Entire Function" })
map("n", "<leader>fd", "<CMD>DevdocsOpenFloat<CR>", { desc = "Open Devdocs" })
map("n", "<leader>co", "<CMD>ColorizerToggle<CR>", { desc = "Toggle Colorizer" })
map("n", "<leader>r", "<CMD>Neotree buffers float<CR>", { desc = "Buffer List" })
map({ "n", "x", "v" }, "<leader>a", "$%", { desc = "End of the Function" })
map("n", "<leader>fl", "<CMD>Telescope resume<CR>", { desc = "Resume Telescope Search" })
map("n", "<leader>fp", "<CMD>Telescope projects<CR>", { desc = "Find projects", remap = true })
map("n", "<leader>fF", ":lua search_home()<CR>", { desc = "Find in Home", remap = true })

function search_home()
    require('telescope.builtin').find_files({
        cwd = "~/",
        hidden = false
    })
end

-- save and quit
map({"n", "v", "x"}, "<C-A-q>", "<CMD>q<CR>", { desc = "Quit Without Saving" })
map("n", "<A-w>", "<CMD>w<CR>", { desc = "Save File" })
map("n", "<leader>qq", "<CMD>qa<CR>", { desc = "Quit all" })
map("n", "<leader>fn", "<CMD>enew<CR>", { desc = "New File" })

-- comment
map("n", "<leader>;", "gcc", { remap = true, silent = true, desc = "Comment line" })
map("x", "<leader>;", "gc", { remap = true, silent = true, desc = "Comment selection" })

-- indenting
map("n", "<leader>si", ":norm =a{<CR>", { desc = "Indent Inside Paragraph" })
map({ "n", "v" }, "<leader>sI", function()
  Util.format({ force = true })
end, { desc = "Format" })

-- capitalize
map("n", "<leader>uu", "guiw", { desc = "Toggle the word into Lower Case" })
map("n", "<leader>uU", "gUiw", { desc = "Toggle the word into Upper Case" })
map("i", "<C-u>", "<Esc>b~gi", { desc = "Toggle the first letter into Upper Case" })
-- map("n", "<leader>cc", "b~e", { desc = "Toggle the first letter into Upper Case" })

-- insert mode commands
map("i", "<C-b>", "<C-Left>", { desc = "Moves cursor left in normal mode" })
map("i", "<C-l>", "<C-Right>", { desc = "Moves cursor right in normal mode" })
map("i", "<C-e>", "<Esc>ea", { desc = "Moves cursor right in normal mode" })

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<CMD>resize +2<CR>", { desc = "InCRease window height" })
map("n", "<C-Down>", "<CMD>resize -2<CR>", { desc = "DeCRease window height" })
map("n", "<C-Left>", "<CMD>vertical resize -2<CR>", { desc = "DeCRease window width" })
map("n", "<C-Right>", "<CMD>vertical resize +2<CR>", { desc = "InCRease window width" })

-- buffers
map("n", "<S-h>", "<CMD>bprevious<CR>", { desc = "Prev buffer" })
map("n", "<S-l>", "<CMD>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bb", "<CMD>e #<CR>", { desc = "Switch to Other Buffer" })
map("n", "<C-s>", "<CMD>e #<CR>", { desc = "Switch to Other Buffer" })
map("n", "<A-s>", "<CMD>e #<CR>", { desc = "Switch to Other Buffer" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<CMD>noh<CR><esc>", { desc = "Escape and clear hlsearch" })

-- https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next search result" })
map("x", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("o", "n", "'Nn'[v:searchforward]", { expr = true, desc = "Next search result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev search result" })
map("x", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })
map("o", "N", "'nN'[v:searchforward]", { expr = true, desc = "Prev search result" })

-- floating terminal
local lazyterm = function() Util.terminal(nil, { cwd = Util.root() }) end
map("n", "<leader>ft", lazyterm, { desc = "Terminal (root dir)" })
map("n", "<leader>fT", function() Util.terminal() end, { desc = "Terminal (cwd)" })
map("n", "<c-/>", lazyterm, { desc = "Terminal (root dir)" })
map("t", "<C-/>", "<CMD>close<CR>", { desc = "Hide Terminal" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
map("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
map("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- tabs
map("n", "<leader><tab>f", "<CMD>tabfirst<CR>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<CMD>tabnew<CR>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<CMD>tabnext<CR>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<CMD>tabclose<CR>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<CMD>tabprevious<CR>", { desc = "Previous Tab" })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- NOTE: LazyVim defaults
map("n", "<leader>l", "<CMD>Lazy<CR>", { desc = "Lazy" })

map("n", "<leader>xl", "<CMD>lopen<CR>", { desc = "Location List" })
map("n", "<leader>xq", "<CMD>copen<CR>", { desc = "Quickfix List" })

map("n", "[q", vim.cmd.cprev, { desc = "Previous quickfix" })
map("n", "]q", vim.cmd.cnext, { desc = "Next quickfix" })

-- diagnostic
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
map("n", "]d", diagnostic_goto(true), { desc = "Next Diagnostic" })
map("n", "[d", diagnostic_goto(false), { desc = "Prev Diagnostic" })
map("n", "]e", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "[e", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
map("n", "]w", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
map("n", "[w", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- toggle options
map("n", "<leader>uf", function() Util.format.toggle() end, { desc = "Toggle auto format (global)" })
map("n", "<leader>uF", function() Util.format.toggle(true) end, { desc = "Toggle auto format (buffer)" })
map("n", "<leader>us", function() Util.toggle("spell") end, { desc = "Toggle Spelling" })
map("n", "<leader>uw", function() Util.toggle("wrap") end, { desc = "Toggle Word Wrap" })
map("n", "<leader>uL", function() Util.toggle("relativenumber") end, { desc = "Toggle Relative Line Numbers" })
map("n", "<leader>ul", function() Util.toggle.number() end, { desc = "Toggle Line Numbers" })
map("n", "<leader>ud", function() Util.toggle.diagnostics() end, { desc = "Toggle Diagnostics" })
local conceallevel = vim.o.conceallevel > 0 and vim.o.conceallevel or 3
map("n", "<leader>uc", function() Util.toggle("conceallevel", false, {0, conceallevel}) end, { desc = "Toggle Conceal" })
if vim.lsp.inlay_hint then
  map("n", "<leader>uh", function() vim.lsp.inlay_hint(0, nil) end, { desc = "Toggle Inlay Hints" })
end

map("n", "<leader>uT", function() if vim.b.ts_highlight then vim.treesitter.stop() else vim.treesitter.start() end end, { desc = "Toggle Treesitter Highlight" })

-- lazygit
map("n", "<leader>gg", function() Util.terminal({ "lazygit" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false }) end, { desc = "Lazygit (root dir)" })
map("n", "<leader>gG", function() Util.terminal({ "lazygit" }, {esc_esc = false, ctrl_hjkl = false}) end, { desc = "Lazygit (cwd)" })

-- highlights under cursor
map("n", "<leader>ui", vim.show_pos, { desc = "Inspect Pos" })

-- TODO:
-- FIX:
-- HACK:
-- WARN:
-- PERF:
-- NOTE:
-- TEST:
-- FIXIT:
-- WARNING:
