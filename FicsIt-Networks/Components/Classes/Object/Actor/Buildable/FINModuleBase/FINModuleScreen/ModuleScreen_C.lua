---@meta

--- This Screen Module for modular I/O Panels allows you to show graphics a GPU renders and to interact with it.
---
--- You can use the instance of the module to bind it to a GPU. The screen will then display the graphics the GPU renders.
--- IF you just look at the screen with the crosshair you will trigger the GPUs OnMouseMove events or
--- if you event click with the right ir left mouse button while doing so, you can also trigger the MouseDown and MouseUp events.
---@class FIN.Components.ModuleScreen_C : FIN.Components.FINModuleScreen
local ModuleScreen_C = {}
