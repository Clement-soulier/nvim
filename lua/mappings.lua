require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

--selection deplacement
map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- paste without overwritebuffer
map("x", "<leader>p", [["_dP]])

-- paste to os paper press
map({"n", "v"}, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({"n", "v"}, "<leader>d", [["_d]])

-- dekete without overwrite buffer
map("n", "<leader>d", "\"_d")
map("n", "<leader>d", "\"_d")

-- exit insert mode
map("i", "<C-s>", "<Esc>")

--search
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
