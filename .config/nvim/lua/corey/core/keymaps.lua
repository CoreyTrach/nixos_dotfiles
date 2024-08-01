vim.g.mapleader = " "

local keymap = vim.keymap

-- line movement
keymap.set("n", "<A-j>", ":m .+1<CR>==") -- move line up(n)
keymap.set("n", "<A-k>", ":m .-2<CR>==") -- move line down(n)
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- line indent
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Easier Save
keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Bufferline Keymaps
keymap.set({ "x", "n", "s" }, "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", { desc = "Move to buffer 1" })
keymap.set({ "x", "n", "s" }, "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", { desc = "Move to buffer 2" })
keymap.set({ "x", "n", "s" }, "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", { desc = "Move to buffer 3" })
keymap.set({ "x", "n", "s" }, "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", { desc = "Move to buffer 4" })
keymap.set({ "x", "n", "s" }, "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", { desc = "Move to buffer 5" })
keymap.set({ "x", "n", "s" }, "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", { desc = "Move to buffer 6" })
keymap.set({ "x", "n", "s" }, "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", { desc = "Move to buffer 7" })
keymap.set({ "x", "n", "s" }, "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", { desc = "Move to buffer 8" })
keymap.set({ "x", "n", "s" }, "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", { desc = "Move to buffer 9" })

-- Better copy/paste
keymap.set("x", "p", [["_dP]])

-- Toggle Word Wrap
keymap.set("n", "<leader>a", ":lua vim.wo.wrap =  not vim.wo.wrap<CR>")
