local cmp = require('cmp')

local cmp_select = { behavior = cmp.SelectBehavior.Select }
return function(extra_sources)
    extra_sources = extra_sources or {}
    local sources = {
        { name = 'nvim_lsp' }
    }

    vim.tbl_extend('force', sources, extra_sources)

    cmp.setup({
        sources = sources,
        snippet = {
            expand = function(args)
                require('luasnip').lsp_expand(args.body)
            end,
        },
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
