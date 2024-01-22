---@meta

---@class Satisfactory.Components.Buildable : Satisfactory.Components.Actor
local Buildable = {}

--- The count of available power connections this building has.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
--- * Read Only - The value of this property can not be changed by code
---@type integer
Buildable.numPowerConnections = nil

--- The count of available factory connections this building has.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
--- * Read Only - The value of this property can not be changed by code
---@type integer
Buildable.numFactoryConnections = nil

--- The count of available factory output connections this building has.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick
--- * Read Only - The value of this property can not be changed by code
---@type integer
Buildable.numFactoryOutputConnections = nil

--//TODO: find out what the states are
---@alias Satisfactory.Components.Buildable.ProductionState
---|integer

--- Triggers when the production state of the buildable changes.
---
--- ### returns from event.pull:
--- ```
--- local signalName, component, state = event.pull()
--- ```
--- - `signalName: string` <br> -> "ProductionChanged"
--- - `component: FIN.Components.Buildable` <br> -> The component which send the signal.
--- - `state: FIN.Components.Buildable.ProductionState` <br> -> The new production state.
---@deprecated
---@type FIN.Components.Signal
Buildable.ProductionChanged = { isVarArgs = false }
