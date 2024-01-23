---@meta

---@class FIN.Components.FINComputerGPUT2 : FIN.Components.FINComputerGPU
local FINComputerGPUT2 = {}

--- Pushes a transformation on the geometry stack. All subsequent drawcalls will be transformed through all previously pushed geometries and this one.
--- Be aware, only all draw calls till, this geometry gets pop'ed are transformed, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param translation FIN.Components.Vector2D The local translation that is supposed to happen to all further drawcalls. Translation can be also thought as 'repositioning'.
---@param rotation float The local rotation that gets applied to all subsequent draw calls. The origin of the rotation is the whole screens center point. The value is in degrees.
---@param scale FIN.Components.Vector2D The scale that gets applied to the whole screen localy along the (rotated) axis. No change in scale is (1,1).
function FINComputerGPUT2:pushTransform(translation, rotation, scale)
end

--- Pushes a layout to the geometry stack. All subsequent drawcalls will be transformed through all previously pushed geometries and this one.
--- Be aware, only all draw calls, till this geometry gets pop'ed are transformed, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param offset FIN.Components.Vector2D The local translation (or offset) that is supposed to happen to all further drawcalls. Translation can be also thought as 'repositioning'.
---@param size FIN.Components.Vector2D The scale that gets applied to the whole screen localy along both axis. No change in scale is 1.
---@param scale float
function FINComputerGPUT2:pushLayout(offset, size, scale)
end

--- Pushes a rectangle to the clipping stack. All subsequent drawcalls will be clipped to only be visible within this clipping zone and all previously pushed clipping zones.
--- Be aware, only all draw calls, till this clipping zone gets pop'ed are getting clipped by it, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position FIN.Components.Vector2D The local position of the upper left corner of the clipping rectangle.
---@param size FIN.Components.Vector2D The size of the clipping rectangle.
function FINComputerGPUT2:pushClipRect(position, size)
end

--- Pushes a 4 pointed polygon to the clipping stack. All subsequent drawcalls will be clipped to only be visible within this clipping zone and all previously pushed clipping zones.
--- Be aware, only all draw calls, till this clipping zone gets pop'ed are getting clipped by it, previous draw calls (and draw calls after the pop) are unaffected by this.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param topLeft FIN.Components.Vector2D The local position of the top left point.
---@param topRight FIN.Components.Vector2D The local position of the top right point.
---@param bottomLeft FIN.Components.Vector2D The local position of the bottom left point.
---@param bottomRight FIN.Components.Vector2D The local position of the bottom right point.
function FINComputerGPUT2:pushClipPolygon(topLeft, topRight, bottomLeft, bottomRight)
end

--- Pops the top most geometry from the geometry stack. The latest geometry on the stack gets removed first. (Last In, First Out)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
function FINComputerGPUT2:popGeometry()
end

--- Pops the top most clipping zone from the clipping stack. The latest clipping zone on the stack gets removed first. (Last In, First Out)
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
function FINComputerGPUT2:popClip()
end

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param text string
---@param size integer
---@param monospace boolean
---@return FIN.Components.Vector2D returnValue
function FINComputerGPUT2:measureText(text, size, monospace)
end

--- Flushes all draw calls to the visible draw call buffer to show all changes at once. The draw buffer gets cleared afterwards.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function FINComputerGPUT2:flush()
end

--- Draws some Text at the given position (top left corner of the text), text, size, color and rotation.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position FIN.Components.Vector2D The position of the top left corner of the text.
---@param text string The text to draw.
---@param size integer The font size used.
---@param color Satisfactory.Components.Color The color of the text.
---@param monospace boolean True if a monospace font should be used.
function FINComputerGPUT2:drawText(position, text, size, color, monospace)
end

--- Draws a Spline from one position to another with given directions, thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param startPos FIN.Components.Vector2D The local position of the start point of the spline.
---@param startDirections FIN.Components.Vector2D The directions of the spline of how it exists the start point.
---@param endPos FIN.Components.Vector2D The local position of the end point of the spline.
---@param endDirections FIN.Components.Vector2D The direction of how the spline enters the end position.
---@param thickness float The thickness of the line drawn.
---@param color Satisfactory.Components.Color The color of the line drawn.
function FINComputerGPUT2:drawSpline(startPos, startDirections, endPos, endDirections, thickness, color)
end

--- Draws a rectangle with the upper left corner at the given local position, size, color and rotation around the upper left corner.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param position FIN.Components.Vector2D The local position of the upper left corner of the rectangle.
---@param size FIN.Components.Vector2D The size of the rectangle.
---@param color Satisfactory.Components.Color The color of the rectangle.
---@param image string If not empty string, should be image reference that should be replaced inside the rectangle.
---@param rotation float The rotation of the rectangle around the upper left corner in degrees.
function FINComputerGPUT2:drawRect(position, size, color, image, rotation)
end

--- Draws connected lines through all given points with the given thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param points FIN.Components.Vector2D[] The local points that get connected by lines one after the other.
---@param thickness float The thickness of the lines.
---@param color Satisfactory.Components.Color The color of the lines.
function FINComputerGPUT2:drawLines(points, thickness, color)
end

--- Draws a box.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param settings FIN.Components.GPUT2DrawCallBox The settings of the box you want to draw.
function FINComputerGPUT2:drawBox(settings)
end

--- Draws a cubic bezier spline from one position to another with given control points, thickness and color.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param startPos FIN.Components.Vector2D The local position of the start point of the spline.
---@param firstControlPos FIN.Components.Vector2D The local position of the first control point.
---@param secondControlPos FIN.Components.Vector2D The local position of the second control point.
---@param endPos FIN.Components.Vector2D The local position of the end point of the spline.
---@param thickness float The thickness of the line drawn.
---@param color Satisfactory.Components.Color The color of the line drawn.
function FINComputerGPUT2:drawBezier(startPos, firstControlPos, secondControlPos, endPos, thickness, color)
end

--- Triggers when a mouse button got released.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, position, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseUp"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `position: FIN.Components.Vector2D` <br> -> The position of the cursor.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the released button event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnMouseUp = { isVarArgs = false }

--- Triggers when a mouse button got pressed.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, position, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseDown"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `position: FIN.Components.Vector2D` <br> -> The position of the cursor.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the pressed button event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnMouseDown = { isVarArgs = false }

--- Triggers when the mouse cursor moves on the screen.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, position, wheelDelta, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseMove"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `position: FIN.Components.Vector2D` <br> -> The position of the cursor.
--- - `wheelDelta: float` <br> -> The delta value of how much the mouse wheel got moved.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the move event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnMouseMove = { isVarArgs = false }

--- Triggers when the mouse cursor leaves the screen area.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, position, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseLeave"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `position: FIN.Components.Vector2D` <br> -> The position of the cursor.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the move event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnMouseLeave = { isVarArgs = false }

--- Triggers when the mouse cursor enters the screen area.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, position, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseEnter"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `position: FIN.Components.Vector2D` <br> -> The position of the cursor.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the move event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnMouseEnter = { isVarArgs = false }

--- Triggers when a key got released.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, char, code, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyUp"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `char: integer` <br> -> The ASCII number of the character typed in.
--- - `code: integer` <br> -> The number code of the pressed key.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the key release event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnKeyUp = { isVarArgs = false }

--- Triggers when a key got pressed.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, char, code, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyDown"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `char: integer` <br> -> The ASCII number of the character typed in.
--- - `code: integer` <br> -> The number code of the pressed key.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the key press event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnKeyDown = { isVarArgs = false }

--- Triggers when a character key got 'clicked' and essentially a character got typed in, useful for text input.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, char, modifiers = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyChar"
--- - `component: FIN.Components.FINComputerGPUT2` <br> -> The component which send the signal.
--- - `char: string` <br> -> The character that got typed is as string.
--- - `modifiers: integer` <br> -> The Modifiers-Bit-Field providing information about the key release event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
FINComputerGPUT2.OnKeyChar = { isVarArgs = false }
