local merge = require('utils.table').merge

local M = {}
local cmp = require('cmp')

function M.append_cmp_source(extra_sources)
    extra_sources = extra_sources or {}

    local cmp_config = cmp.get_config()
    cmp_config.sources = merge(cmp_config.sources, extra_sources)

    cmp.setup(cmp_config)
end

return M
