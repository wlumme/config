-- https://github.com/folke/todo-comments.nvim
-- Highlight and search for TODO comments

return {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
}
