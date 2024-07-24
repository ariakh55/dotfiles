local godotproject = io.open(vim.fn.getcwd() .. "/project.godot")
if godotproject then
    print('helo godot')
    vim.fn.serverstart './godothost'
end
