-- https://github.com/mason-org/mason.nvim
-- Package manager

return {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
    },
    opts = {
        ensure_installed = vim.g.lsps,
    },
}
