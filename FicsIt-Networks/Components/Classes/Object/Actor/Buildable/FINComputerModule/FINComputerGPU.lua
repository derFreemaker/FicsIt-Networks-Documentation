---@meta

--- A Internet Card!
---@class FIN.Components.FINComputerGPU : FIN.Components.FINComputerModule, FIN.PCIDevice
local FINComputerGPU = {}

--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
--- * Runtime Parallel - Can be called/changed in Satisfactory Factory Tick.
---@return FIN.Components.Vector2D size
function FINComputerGPU:getScreenSize()
end

--- Binds this GPU to the given screen. Unbinds the already bound screen.
--- ### Flags:
--- * Runtime Synchronous - Can be called/changed in Game Tick.
---@param screen FIN.Components.Screen Description parameter 1
function FINComputerGPU:bindScreen(screen)
end

--- ### returns from event.pull:
--- ```
--- local signalName, component, oldScreen = event.pull()
--- ```
--- - `signalName: string` <br> -> "ScreenBound"
--- - `component: FIN.Components.FINComputerGPU` <br> -> The component which send the signal.
--- - `oldScreen: FIN.Components.Screen?` <br> -> The screen which got unbounded.
---@deprecated
---@type FIN.Components.Signal
FINComputerGPU.ScreenBound = { isVarArgs = false }
