---@meta

--- This struct contains the necessary information to draw a box onto the GPU T2.
---@class FIN.Components.GPUT2DrawCallBox : FIN.Struct
local GPUT2DrawCallBox = {}

--- The drawn local position of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type FIN.Components.Vector2D
GPUT2DrawCallBox.position = nil

--- The drawn size of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type FIN.Components.Vector2D
GPUT2DrawCallBox.size = nil

--- The draw rotation of the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
GPUT2DrawCallBox.rotation = nil

--- The fill color of the rectangle, or the tint of the image drawn.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type Satisfactory.Components.Color
GPUT2DrawCallBox.color = nil

--- If not empty, should be a image reference to the image that should be drawn inside the rectangle.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type string
GPUT2DrawCallBox.image = nil

--- The size of the internal image drawn, necessary for proper scaling, antialising and tiling.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type FIN.Components.Vector2D
GPUT2DrawCallBox.imageSize = nil

--- If set to false, the position will give the left upper corner of the box and rotation will happen around this point.
--- If set to true, the position will give the center point of box and the rotation will happen around this center point.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.hasCenteredOrigin = nil

--- True if the image should be tiled horizontally.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.horizontalTiling = nil

--- True if the image should be tiled vertically.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.verticalTiling = nil

--- If true, the margin values provide a way to specify a fixed sized border thicknesses the boxes images will use (use the image as 9-patch).
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.isBorder = nil

--- The margin values of the 9-patch (border).
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type FIN.Components.Margin
GPUT2DrawCallBox.margin = nil

--- True if the box can have rounded borders.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.isRounded = nil

--- The rounded border radii used if isRounded is set to true.
--- The Vector4 corner mapping in order: Top Left, Top Right, Bottom Right & Bottom Left.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type FIN.Components.Vector4
GPUT2DrawCallBox.radii = nil

--- True if the box has a colorful (inward) outline.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type boolean
GPUT2DrawCallBox.hasOutline = nil

--- The uniform thickness of the outline around the box.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type float
GPUT2DrawCallBox.outlineThickness = nil

--- The color of the outline around the box.
--- ### Flags:
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
---@type Satisfactory.Components.Color
GPUT2DrawCallBox.outlineColor = nil
