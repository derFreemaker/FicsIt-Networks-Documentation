---@meta

---@class Satisfactory.Components.Color : FIN.Struct
---@operator add(Satisfactory.Components.Color) : Satisfactory.Components.Color
---@operator sub(Satisfactory.Components.Color) : Satisfactory.Components.Color
---@operator unm() : Satisfactory.Components.Color
---@operator mul(float) : Satisfactory.Components.Color
---@operator div(float) : Satisfactory.Components.Color
local Color = {}

--- The red portion of the color.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Color.r = nil

--- The green protion of the color.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Color.g = nil

--- The blue protion of the color.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Color.b = nil

--- The alpha (opacity) portion of the color.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
Color.a = nil
