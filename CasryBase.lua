local includer = require(script.Includer)

local Injector = includer.RequireModule("Injector", script)
local Functions = includer.RequireModule("Functions", script)

local base_module = {}

function base_module.start()
    Injector.LOAD()
end

function base_module.stop()
    Injector.UNLOAD()
end

return base_module
