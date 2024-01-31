---@meta

---
--- # Class # ---

--- Template class Description
---@class Template
local Template

---
--- # Property # ---

--- Description
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
--- * Read Only - The value of this property can not be changed by code.
---@type any
Template.property = nil

---
--- # Function # ---

--- Description
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
--- * Runtime Asynchronous - Can be changed anytime.
--- * Variable Arguments - Can have any additional arguments as described.
---@param test any Description parameter 1
---@return any returnName Description return parameter
function Template:functionTemplate(test)
end

---
--- # Signal # ---

--- Description
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, test = event.pull()
--- ```
--- - `signalName: "Signal"`
--- - `component: Template`
--- - `test: string` <br>
--- description
---@deprecated
---@type FIN.Components.Signal
Template.Signal = { isVarArgs = false }
