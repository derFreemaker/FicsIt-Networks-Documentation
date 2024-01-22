---@meta

---@class FIN.Components.Screen : Satisfactory.Components.Buildable
local Screen = {}

--- Returns the size of the screen in 'panels'.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Variable Arguments - Can have any additional arguments as described.
---@return integer Width The width of the screen.
---@return integer Height The height of the screen.
function Screen:getSize()
end
