require("utils.toggle_terminal")

local s = vim.keymap.set

-- Clear highlights on search when pressing <Esc> in normal mode
s("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
s(
    "n",
    "<leader>q",
    vim.diagnostic.setloclist,
    { desc = "Open diagnostic [Q]uickfix list" }
)

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
s("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
s("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
s("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
s("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
s("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- s('i', '<C-\'>', '<Esc><:vs><:term><:i>', { desc = 'Open terminal in split window' })
-- s('n', '<C-h>', '<:vs>', { desc = 'Open terminal in split window' })

s({ "i", "n", "t" }, "<A-'>", toggle_terminal)
