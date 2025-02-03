require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<C-r>", ":!zig build run")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>lr", require "nvchad.lsp.renamer", { desc = "NvRenamer" })
map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code Action" })
-- map("n", "<leader>nh", "<cmd>NvCheatsheet<CR>", { desc = "toggle NvCheatsheet" })
map("n", "<leader>ld", vim.lsp.buf.type_definition, { desc = "Go to type definition" })

map("n", "<leader>lp", vim.diagnostic.open_float, { desc = "Show diagnostic" })

local nomap = vim.keymap.del

nomap("n", "<leader>h")
nomap("n", "<leader>v")
nomap("n", "<leader>e")
nomap("n", "<leader>x") -- buffer close
nomap("n", "<leader>n")
nomap("n", "<leader>rn")
nomap("n", "<tab>")

-- Remove nvchads default keys
-- nomap("n", "<C-n>")
nomap("n", "<C-l>")
nomap("n", "<C-h>")

-- Set for tmux navigation
map("n", "<C-l>", "<cmd> TmuxNavigateRight<cr>")
map("n", "<C-h>", "<cmd> TmuxNavigateLeft<cr>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown<cr>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp<cr>")

-- Disable nvchad lsp mappings
--  nomap("n", "<leader>wa")
-- nomap("n", "<leader>wr")
-- nomap("n", "<leader>sh")

nomap("n", "<leader>pt")

nomap({ "n", "t" }, "<A-h>")
nomap({ "n", "t" }, "<A-v>")
nomap({ "n", "t" }, "<A-i>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
