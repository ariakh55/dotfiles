vim.api.nvim_create_user_command('Reload', function(tbl)
    local file
    if tbl.args == nil or tbl.args == '' then
        file = "init.lua"
    else
        file = tbl.args
    end

    local configDir = "~/.config/nvim/" .. file

    local vimCmd = 'so ' .. configDir

    vim.cmd(vimCmd)
end, {nargs = "*"})

