-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = false

-- Set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- vim.g.lsps = { "lua-language-server", "python-lsp-server", "ruff", "ty" }

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

local file_patterns = {
    { "*.lua", "stylua '%'" },
    { "*.py", "ruff check '%' --fix-only && ruff format '%'" },
}

local group = vim.api.nvim_create_augroup("format", { clear = true })

for k, v in pairs(file_patterns) do
    pattern = v[1]
    command = v[2]
    vim.api.nvim_create_autocmd("BufWritePost", {
        group = group,
        desc = "Format file on write",
        pattern = pattern,
        command = "silent !\"" .. command .. "\"",
    })
end

require("config.options")
require("config.lazy")
-- require("config.lsp")
require("config.keymaps")

-- require("nvim-treesitter.install").compilers = { "zig", "clang" }
