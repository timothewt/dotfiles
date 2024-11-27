require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local del = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("t", "<Esc>", "<C-\\><C-n>") -- exit terminal mode
map("t", "<M-j>", "<Down>")
map("t", "<M-k>", "<Up>")
map("t", "<M-h>", "<Left>")
map("t", "<M-l>", "<Right>")

del("i", "<Tab>")
vim.g.copilot_no_tab_map = true
map("i", "<M-y>", "copilot#Accept()", { noremap = true, silent = true, expr = true, replace_keycodes = false }) -- Copilot Accept
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
