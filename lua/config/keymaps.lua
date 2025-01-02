-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("i", "jk", "<esc>l", { desc = "Escape Mode" })
map("n", "cw", "ciw", { desc = "Change Inside Word" })
map("n", "cW", "ciW", { desc = "Change Inside WORD" })

-- delete buffer
map({ "n", "v", "x" }, "<S-q>", "<CMD>bdelete<CR>", { desc = "Delete Buffer" })
map({ "n", "v", "x" }, "<A-q>", "<CMD>bdelete<CR>", { desc = "Delete Buffer" })

-- better pasting
map("v", "p", '"_dP', { desc = "Better Pasting" })
map("v", "P", '"_dp', { desc = "Better Pasting" })

-- DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
  "n",
  "<Leader>dd",
  "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
  { desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

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
map("n", "<leader>co", "<CMD>ColorizerToggle<CR>", { desc = "Toggle Colorizer" })
map("n", "<leader>r", "<CMD>Neotree buffers float<CR>", { desc = "Buffer List" })
map({ "n", "x", "v" }, "<leader>a", "$%", { desc = "End of the Function" })
map("n", "<leader>fp", "<CMD>Telescope projects<CR>", { desc = "Find projects", remap = true })
-- map("n", "<leader>fd", "<CMD>DevdocsOpenFloat<CR>", { desc = "Open Devdocs" })
-- map("n", "<leader>fl", "<CMD>Telescope resume<CR>", { desc = "Resume Telescope Search" })

-- save and quit
map({ "n", "v", "x" }, "<C-A-q>", "<CMD>q<CR>", { desc = "Quit Without Saving" })
map("n", "<A-w>", "<CMD>w<CR>", { desc = "Save File" })
map("n", "<leader>qq", "<CMD>qa<CR>", { desc = "Quit all" })
map("n", "<leader>fn", "<CMD>enew<CR>", { desc = "New File" })

-- comment
map("n", "<leader>;", "gcc", { remap = true, silent = true, desc = "Comment line" })
map("x", "<leader>;", "gc", { remap = true, silent = true, desc = "Comment selection" })

-- indenting
map("n", "<leader>si", ":norm =a{<CR>", { desc = "Indent Inside Paragraph" })

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

-- Terminal Mappings
-- local snackterm = function ()
--   Snacks.terminal.open(nil, {win = { position = "right"}})
-- end
-- terminal
map("n", "<leader>fT", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
map("n", "<leader>ft", function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (Root Dir)" })
map("n", "<c-/>", function()
  ---@diagnostic disable-next-line: missing-fields
  Snacks.terminal.open(nil, { win = { position = "right" } })
end, { desc = "Terminal (Root Dir)" })
map("t", "<C-/>", "<cmd>close<cr>", { desc = "Hide Terminal" })

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

map("n", "<leader>uT", function()
  if vim.b.ts_highlight then
    vim.treesitter.stop()
  else
    vim.treesitter.start()
  end
end, { desc = "Toggle Treesitter Highlight" })

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
