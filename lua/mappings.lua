require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "t" }, "<A-i>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm", cmd = "neofetch" }
end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
