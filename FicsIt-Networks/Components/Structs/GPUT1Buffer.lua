---@meta

--- A structure that can hold a buffer of characters and colors that can be displayed with a gpu.
---@class FIN.Components.GPUT1Buffer : FIN.Struct
local GPUT1Buffer = {}

--- Allows to get the dimensions of the buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@return float width The width of this buffer.
---@return float height The height of this buffer.
function GPUT1Buffer:getSize()
end

--- Allows to set the dimensions of the buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param width float The width this buffer should now have.
---@param height float The height this buffer should now have.
function GPUT1Buffer:setSize(width, height)
end

--- Allows to get a single pixel from the buffer at the given position.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x integer The x position of the character you want to get.
---@param y integer The y position of the character you want to get.
---@return string char The character at the given position.
---@return Satisfactory.Components.Color foreground The foreground color of the pixel at the given position.
---@return Satisfactory.Components.Color background The background color of the pixel at the given position.
function GPUT1Buffer:get(x, y)
end

--- Allows to set a single pixel of the buffer at the given position.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x integer The x position of the character you want to set.
---@param y integer The y position of the character you want to set.
---@param char string The character the pixel should have.
---@param foreground Satisfactory.Components.Color The foreground color of the pixel at the given position.
---@param background Satisfactory.Components.Color The background color of the pixel at the given position.
---@return boolean done True if the pixel got set successfully
function GPUT1Buffer:set(x, y, char, foreground, background)
end

---@alias FIN.Components.GPUT1Buffer.TextBlendMode
---|0 Overwrite this with the content of the given buffer.
---|1 Overwrite with only characters that are not ''.
---|2 Overwrite only were this characters are ''.
---|3 Keep this buffer.

---@alias FIN.Components.GPUT1Buffer.ColorBlendMode
---|0 Overwrite with the given color.
---|1 Normal alpha composition
---|2 Multiply
---|3 Divide
---|4 Addition
---|5 Subtraction
---|6 Difference
---|7 Darken Only
---|8 Lighten Only
---|9 None

--- Copies the given buffer at the given offset of the upper left corner into this buffer.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
--- * Variable Arguments - Can have any additional arguments as described.
---@param x integer The x offset of the upper left corner of the buffer relative to this buffer.
---@param y integer The y offset of the upper left corner of the buffer relative to this buffer.
---@param buffer FIN.Components.GPUT1Buffer The buffer from which you want to copy from.
---@param textBlendMode FIN.Components.GPUT1Buffer.TextBlendMode The blend mode that is used for the text.
---@param foregroundBlendMode FIN.Components.GPUT1Buffer.ColorBlendMode The blend mode that is used for the foreground color.
---@param backgroundBlendMode FIN.Components.GPUT1Buffer.ColorBlendMode The blend mode that is used for the background color.
function GPUT1Buffer:copy(x, y, buffer, textBlendMode, foregroundBlendMode, backgroundBlendMode)
end

--- Allows to write the given text onto the buffer and with the given position.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param x integer The X Position at which the text should begin to get written.
---@param y integer The Y Position at which the text should begin to get written.
---@param text string The text that should get written.
---@param foreground Satisfactory.Components.Color The foreground color which will be used to write the text.
---@param background Satisfactory.Components.Color The background color which will be used to write the text.
function GPUT1Buffer:setText(x, y, text, foreground, background)
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
---@param char string A string with a single character that will be used for each pixel in the range you want to fill.
---@param foreground Satisfactory.Components.Color? The foreground color which will be used to fill the rectangle.
---@param background Satisfactory.Components.Color? The background color which will be used to fill the rectangle.
function GPUT1Buffer:fill(x, y, width, height, char, foreground, background)
end

--- Allows to set the internal data of the buffer more directly.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
---@param chars string The characters you want to draw with a length of exactly width*height.
---@param foreground float[] The values of the foreground color slots for each character were a group of four values given one color. So the length has to be exactly width*height*4.
---@param background float[] The values of the background color slots for each character were a group of four values given one color. So the length has to be exactly width*height*4.
---@return boolean success True if the raw data was successfully written.
function GPUT1Buffer:setRaw(chars, foreground, background)
end

--- Clones this buffer into aa new struct
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Components.GPUT1Buffer clone The clone of this buffer.
function GPUT1Buffer:clone()
end
