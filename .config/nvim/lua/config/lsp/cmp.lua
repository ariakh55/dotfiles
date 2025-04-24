local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
require("luasnip.loaders.from_vscode").lazy_load()

local kind_icons = {
  Text = "",
  Method = "󰆧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰇽",
  Variable = "󰂡",
  Class = "󰠱",
  Interface = "",
  Module = "",
  Property = "󰜢",
  Unit = "",
  Value = "󰎠",
  Enum = "",
  Keyword = "󰌋",
  Snippet = "",
  Color = "󰏘",
  File = "󰈙",
  Reference = "",
  Folder = "󰉋",
  EnumMember = "",
  Constant = "󰏿",
  Struct = "",
  Event = "",
  Operator = "󰆕",
  TypeParameter = "󰅲",
  Supermaven = "󰅱"
}

local cmp_select = { behavior = cmp.SelectBehavior.Select }
return function()
  cmp.setup({
    sources = {
      { name = "nvim_lsp" },
      { name = "luasnip" },
    },
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
      ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
      ['<C-y>'] = cmp.mapping.confirm({ select = true }),
      ["<C-Space>"] = cmp.mapping.complete(),
      ['<Tab>'] = nil,
      ['<S-Tab>'] = nil,
    }),
    formatting = {
      format = function(entry, vim_item)
        local max_width = 50
        if #vim_item.abbr > max_width then
          vim_item.abbr = string.sub(vim_item.abbr, 1, max_width - 1) .. "…"
        end

        local icon = kind_icons[vim_item.kind]
        vim_item.kind = string.format("%s %s", icon, vim_item.kind)

        vim_item.menu = ({
          nvim_lsp = "",
          luasnip = "",
          nvim_lua = "",
          supermaven = "",
        })[entry.source.name]

        return vim_item
      end
    }
  })
end
