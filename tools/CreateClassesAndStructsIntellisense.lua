local Path = require("tools.Freemaker.bin.path")
local FileSystem = require("tools.Freemaker.bin.filesystem")

local args = { ... }
if #args < 1 then
    error("not all args given")
end

local ApiDocumentations = Path.new(args[1])

---@param path Freemaker.FileSystem.Path
---@param childs string[]
local function scanDir(path, childs)
    local pathStr = path:ToString()
    local childsFound = FileSystem.GetFiles(pathStr)
    for _, child in pairs(childsFound) do
        if child:find(".lua") then
            child = child:gsub(".lua", "")
            table.insert(childs, child)
        end
    end

    local childDirs = FileSystem.GetDirectories(pathStr)
    for _, childDir in pairs(childDirs) do
        scanDir(path:Extend(childDir), childs)
    end
end

---@param path Freemaker.FileSystem.Path
------@return string[]
local function documentClasses(path)
    path = path:Extend("/Classes")

    local classes = {}
    scanDir(path, classes)
    return classes
end

---@param path Freemaker.FileSystem.Path
---@return string[]
local function documentStructs(path)
    path = path:Extend("/Structs")

    local structs = {}
    scanDir(path, structs)
    return structs
end

local function documentSatisfactory(classes, structs)
    local path = ApiDocumentations:Extend("/Satisfactory/Components")
    return documentClasses(path), documentStructs(path)
end

local function documentFicsItNetworks(classes, structs)
    local path = ApiDocumentations:Extend("/FicsIt-Networks/Components")
    return documentClasses(path), documentStructs(path)
end

local satisfactoryClasses, satisfactoryStructs = documentSatisfactory()
local ficsItNetworksClasses, ficsItNetworksStructs = documentFicsItNetworks()

local outputFilePath = ApiDocumentations:Extend("/FicsIt-Networks/classes&structs.lua")
local file = FileSystem.OpenFile(outputFilePath:ToString(), "w")
if not file then
    error("unable to open file: " .. outputFilePath:ToString())
end
file:write("---@meta\n\n")
file:write("---@class classes\n")

for _, class in pairs(satisfactoryClasses) do
    file:write("---@field " .. class .. " Satisfactory.Components." .. class .. "\n")
end

for _, class in pairs(ficsItNetworksClasses) do
    file:write("---@field " .. class .. " FIN.Components." .. class .. "\n")
end

file:write("classes = {}\n")

file:write("\n---@class structs\n")

for _, class in pairs(satisfactoryStructs) do
    file:write("---@field " .. class .. " Satisfactory.Components." .. class .. "\n")
end

for _, class in pairs(ficsItNetworksStructs) do
    file:write("---@field " .. class .. " FIN.Components." .. class .. "\n")
end

file:write("structs = {}\n")

file:close()
