-- base settings
require("sulfurchan.set")
require("sulfurchan.remap")

-- autocmds
require("sulfurchan.autocmds")

-- misc
require("sulfurchan.commands")
require("sulfurchan.addons")
require("sulfurchan.filetypes")

-- plugin manager
local builtin_pack = os.getenv("NVIM_PACK")
if builtin_pack  then
    require("sulfurchan.pack")
else
    require("sulfurchan.lazy")
end
