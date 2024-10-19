local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
return function()
    cmp.setup({
        mapping = cmp.mapping.preset.insert({
            ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-y>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
            ['<Tab>'] = nil,
            ['<S-Tab>'] = nil,
        })
    })
end
