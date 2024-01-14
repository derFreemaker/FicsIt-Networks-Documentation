local Path = require("tools.Freemaker.bin.path")
local FileSystem = require("tools.Freemaker.bin.filesystem")

local args = { ... }
if #args < 3 then
    error("not all args given: {DocUpdater} {ApiDocumentationSource} {ApiDocumentationOutput}")
end

local DocUpdater = args[1]
local ApiDocumentationSource = Path.new(args[2])
local ApiDocumentationOutput = Path.new(args[3])

local docSourceFolders = FileSystem.GetDirectories(ApiDocumentationSource:ToString())
for _, sourceFolder in pairs(docSourceFolders) do
    local folderPath = ApiDocumentationSource:Extend(sourceFolder):Extend("Doc")
    if not folderPath:Exists() then
        goto continue
    end

    local docSourceFiles = FileSystem.GetFiles(folderPath:ToString())
    if #docSourceFiles == 0 then
        goto continue
    end

    local outputSourceFolder = ApiDocumentationOutput:Extend(sourceFolder)
    if not outputSourceFolder:Create() then
        error("unable to create folder: " .. outputSourceFolder:ToString())
    end

    for _, file in pairs(docSourceFiles) do
        local filePath = folderPath:Extend(file)
        local outputFilePath = outputSourceFolder
            :Extend(Path.new(file):GetFileStem() .. ".md")

        local command = DocUpdater .. " -s \"" .. filePath:ToString() .. "\" -o \"" .. outputFilePath:ToString() .. "\""
        os.execute(command)
    end

    ::continue::
end
