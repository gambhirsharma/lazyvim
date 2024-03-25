-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- setting up the var of r lazyterm
local Util = require("lazyvim.util")
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end

vim.keymap.set("i", "jj", "<esc>", { desc = "Normal mode" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Exit insert mode with jk" })
vim.keymap.set({ 't' }, '<C-q>', '<C-\\><C-n>') 

vim.keymap.set("n", ";", ":", { desc = "Enter command mode" })
vim.keymap.set("n", "<leader>x", "<leader>bd", { desc = "Delete current buffer", remap = true })
-- vim.keymap.set("n", "<Tab>", "]b", { desc = "Next buffer", remap = true })
-- vim.keymap.set("n", "<S-Tab>", "[b", { desc = "Previous buffer", remap = true })
vim.keymap.set("v", "<leader>/", "gc", { desc = "Comment selected", remap = true })
vim.keymap.set("n", "<leader>/", "gcc", { desc = "Comment Line", remap = true })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Live Grep" })
vim.keymap.set({ "n", "t" }, "<A-i>", lazyterm, { desc = "Toggle Terminal", remap = true })
vim.keymap.set("n", "<leader>f", "<leader>cd", { desc = "Line Diagnostics", remap = true })


-- move selection in visual mode
vim.keymap.set("v", "K", ":move '<-2<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("v", "J", ":move '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Cody Chat
vim.keymap.set("n", "<leader>cs", "<cmd>CodyChat<CR>", {desc = "Cody Chat", remap = ture})
vim.keymap.set("n", "<leader>ct", "<cmd>CodyToggle<CR>", {desc = "Cody Toggle", remap = ture})
-- vim.keymap.set("n", "<leader>cd", ":CodyTask<Space>", {desc = "Cody Task", remap = ture})


-- Notes 
vim.keymap.set('n', "<leader>nt", "<cmd>Telescope find_files cwd=~/Documents/Notes<CR>", {desc="Notes"})


