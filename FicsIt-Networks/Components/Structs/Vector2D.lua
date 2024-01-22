---@meta

--- Contains two coordinates (X, Y) to describe a position or movement vector in 2D Space.
---@class FIN.Components.Vector2D : FIN.Struct
---@operator add(FIN.Components.Vector2D) : FIN.Components.Vector2D
---@operator sub(FIN.Components.Vector2D) : FIN.Components.Vector2D
---@operator unm() : FIN.Components.Vector2D
---@operator mul(FIN.Components.Vector2D) : float
---@operator mul(float) : FIN.Components.Vector2D
local Vector2D = {}

--- The X coordinate component
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Vector2D.x = nil

--- The Y coordinate component
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Vector2D.y = nil
