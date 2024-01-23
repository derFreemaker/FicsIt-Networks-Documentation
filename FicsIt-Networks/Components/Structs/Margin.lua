---@meta

--- A struct containing four floats that describe a margin around a box (like a 9-patch).
---@class FIN.Components.Margin : FIN.Struct
local Margin = {}

--- The left edge of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Margin.left = nil

--- The right edge of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Margin.right = nil

--- The top edge of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Margin.top = nil

--- The bottom edge of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Margin.bottom = nil
