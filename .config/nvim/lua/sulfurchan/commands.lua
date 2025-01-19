local config_dir = "~/.config/nvim/"

function scan_dir(directory)
  local i, filename_table, popen = 0, {}, io.popen
  local pfile = popen('find ' .. directory .. ' -type f -name "*.lua"')

  for filename in pfile:lines() do
    i = i + 1
    filename_table[i] = filename:sub(#directory + 2)
  end

  pfile.close()

  return filename_table
end

vim.api.nvim_create_user_command('Reload', function(tbl)
    local file
    if tbl.args == nil or tbl.args == '' then
        file = "init.lua"
    else
        file = tbl.args
    end

    local config_file = config_dir  .. file

    local vim_cmd = 'so ' .. config_file

    vim.cmd(vim_cmd)
    print("Sourced " .. config_file)
end, {
  nargs = "*",
  complete = function (arg_lead)
    local directory = vim.fn.stdpath("config")
    local files = scan_dir(directory)
    local matches = {}

    for _,file in ipairs(files) do
      if file:match("^" .. vim.fn.escape(arg_lead,"([%]%)%.%*%+%?%^%$")) then
        table.insert(matches, file)
      end
    end

    return matches
  end
})


vim.api.nvim_create_user_command('Filename', function(_)
    local filename = vim.fn.expand('%:t')
    filename = filename:match("(.+)%..+$") or filename

    vim.api.nvim_put({filename}, 'c', true, true)
end, {})


