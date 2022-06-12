local includer = require(script.Includer)

local Injector = includer.RequireModule("Injector", script)
local Functions = includer.RequireModule("Functions", script)

local base_module = {}

function base_module.start()
    Injector.LOAD() -- The first argument is the options you created, the second argument is the gui you created
end

function base_module.stop()
    Injector.UNLOAD() -- The first argument is the options you created, the second argument is the gui you created
end

return base_module