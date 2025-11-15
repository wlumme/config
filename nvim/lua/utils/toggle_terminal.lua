-- Credit to https://github.com/3BD-R/nvim/blob/main/lua/basic/term.lua

local te_buf = nil
local te_win_id = nil

local function open_terminal()
    if vim.fn.bufexists(te_buf) ~= 1 then
        vim.api.nvim_command(
            "autocmd TermOpen * setlocal nonumber norelativenumber signcolumn=no"
        )
        vim.api.nvim_command("vertical split | wincmd L | terminal")
        te_win_id = vim.fn.win_getid()
        te_buf = vim.fn.bufnr("%")
    elseif vim.fn.win_gotoid(te_win_id) ~= 1 then
        vim.api.nvim_command("vertical sbuffer " .. te_buf .. "| wincmd L | ")
        te_win_id = vim.fn.win_getid()
    end
    vim.api.nvim_command("startinsert")
end

local function hide_terminal()
    if vim.fn.win_gotoid(te_win_id) == 1 then
        vim.api.nvim_command("hide")
    end
end

function toggle_terminal()
    if vim.fn.win_gotoid(te_win_id) == 1 then
        hide_terminal()
    else
        open_terminal()
    end
end
