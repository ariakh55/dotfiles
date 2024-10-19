local lsp_config = require('lspconfig')

return function()
    local gdport = os.getenv 'GDScript_Port' or '6005'
    lsp_config.gdscript.setup({
        default_config = {
            cmd = { 'nc', 'localhost', gdport },
            filetypes = { 'gd', 'gdscript', 'gdscript3', 'tscn' },
            root_dir = lsp_config.util.root_pattern('project.godot', '.git'),
        }
    })
end
