---@meta

---@class FIN.Components.GPUT1 : FIN.Components.FINComputerGPU
local GPUT1 = {}

--- Draws the given text at the given position to the hidden screen buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x integer The x coordinate at which the text should get drawn.
---@param y integer The y coordinate at which the text should get drawn.
---@param str string The text you want to draw on-to the buffer.
function GPUT1:setText(x, y, str)
end

--- Changes the size of the text-grid (and buffer).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@param width integer The width of the text-grid.
---@param height integer The height of the text-grid.
function GPUT1:setSize(width, height)
end

--- Changes the foreground color that is used for the next draw calls.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r float The read portion of the foreground color. (0.0 - 1.0)
---@param g float The green portion of the foreground color. (0.0 - 1.0)
---@param b float The blue portion of the foreground color. (0.0 - 1.0)
---@param a float The opacity of the foreground color. (0.0 - 1.0)
function GPUT1:setForeground(r, g, b, a)
end

--- Changes the background color that is used for the next draw calls.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param r float The red portion of the background color. (0.0 - 1.0)
---@param g float The green portion of the background color. (0.0 - 1.0)
---@param b float The blue portion of the background color. (0.0 - 1.0)
---@param a float The opacity of the background color. (0.0 - 1.0)
function GPUT1:setBackground(r, g, b, a)
end

--- Allows to change the back buffer of the GPU to the given buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param buffer FIN.Components.GPUT1Buffer The Buffer you want to now use as back buffer.
function GPUT1:setBuffer(buffer)
end

--- Returns the size of the text-grid (and buffer).
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return integer width The width of the text-grid.
---@return integer height The height of the text-grid.
function GPUT1:getSize()
end

--- Returns the currently bound screen.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Components.Screen screen The currently bound screen.
function GPUT1:getScreen()
end

--- Flushes the hidden screen buffer to the visible screen buffer and so makes the draw calls visible.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
function GPUT1:flush()
end

--- Draws the given character at all given positions in the given rectangle on-to the hidden screen buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x integer The x coordinate at which the rectangle should get drawn. (upper-left corner)
---@param y integer The y coordinate at which the rectangle should get drawn. (upper-left corner)
---@param width integer The width of the rectangle.
---@param height integer The height of the rectangle.
---@param str string The character you want to use for the rectangle. (first char in the given string)
function GPUT1:fill(x, y, width, height, str)
end

--- Triggers when the size of the text gird changed.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, oldWidth, oldHeight = event.pull()
--- ```
--- - `signalName: string` <br> -> "ScreenSizeChanged"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `oldWidth: integer` <br> -> The old width of the screen.
--- - `oldHeight: integer` <br> -> The old height of the screen.
---@deprecated
---@type FIN.Components.Signal
GPUT1.ScreenSizeChanged = { isVarArgs = false }

--- Triggers when a mouse button got released.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, x, y, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseUp"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `x: integer` <br> -> The x position of the cursor.
--- - `y: integer` <br> -> The y position of the cursor.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the released button event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnMouseUp = { isVarArgs = false }

--- Triggers when a mouse button got pressed.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, x, y, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseDown"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `x: integer` <br> -> The x position of the cursor.
--- - `y: integer` <br> -> The y position of the cursor.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the pressed button event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnMouseDown = { isVarArgs = false }

--- Triggers when the mouse cursor moves on the screen.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, x, y, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnMouseMove"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `x: integer` <br> -> The x position of the cursor.
--- - `y: integer` <br> -> The y position of the cursor.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the move event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnMouseMove = { isVarArgs = false }

--- Triggers when a key got released.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, x, y, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyUp"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `char: integer` <br> -> The ASCII number of the character typed in.
--- - `code: integer` <br> -> The number code of the pressed key.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the key release event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnKeyUp = { isVarArgs = false }

--- Triggers when a key got pressed.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, x, y, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyDown"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `char: integer` <br> -> The ASCII number of the character typed in.
--- - `code: integer` <br> -> The number code of the pressed key.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the key press event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnKeyDown = { isVarArgs = false }

--- Triggers when a character key got 'clicked' and essentially a character got typed in, useful for text input.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, char, btn = event.pull()
--- ```
--- - `signalName: string` <br> -> "OnKeyChar"
--- - `component: FIN.Components.GPUT1` <br> -> The component which send the signal.
--- - `char: string` <br> -> The character that got typed in as string.
--- - `btn: integer` <br> -> The Button-Bit-Field providing information about the key press event.<br> Bits:<br> 1. left-mouse<br> 2. right-mouse<br> 3. ctrl-key<br> 4. shift-key<br> 5. alt-key<br> 6. cmd-key
---@deprecated
---@type FIN.Components.Signal
GPUT1.OnKeyChar = { isVarArgs = false }
