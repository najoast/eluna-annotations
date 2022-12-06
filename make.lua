
local elunaLuaEngineUri = "/your/path/azerothcore-wotlk/modules/mod-eluna/src/LuaEngine"

local classes = {
    "Global",
    "Group",
    "Guild",
    "Item",
    "Map",
    "Object",
    "Player",
    "Quest",
    "Spell",
    "Unit",
    "Vehicle",
    "WorldObject",
    "WorldPacket"
}

for _, class in ipairs(classes) do
    local inputFileName = elunaLuaEngineUri .. "/" .. class .. "Methods.h"
    local outputFileName = "./annotations/methods/" .. string.lower(class) .. "_methods.lua"
    local command
    if class == "Global" then
        command = string.format("lua ./gen/gen.lua %s > %s", inputFileName, outputFileName)
    else
        command = string.format("lua ./gen/gen.lua %s %s > %s", inputFileName, class, outputFileName)
    end
    print(command)
    os.execute(command)
end
