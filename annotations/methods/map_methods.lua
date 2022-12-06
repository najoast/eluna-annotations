-- Code generated by eluna-annotations-generator, PLEASE DO NOT EDIT

---@class Map
local Map = {}

---
--- Returns `true` if the [Map] is an arena [BattleGround], `false` otherwise.
---
---@return bool @ isArena
function Map:IsArena() end

---
--- Returns `true` if the [Map] is a non-arena [BattleGround], `false` otherwise.
---
---@return bool @ isBattleGround
function Map:IsBattleground() end

---
--- Returns `true` if the [Map] is a dungeon, `false` otherwise.
---
---@return bool @ isDungeon
function Map:IsDungeon() end

---
--- Returns `true` if the [Map] has no [Player]s, `false` otherwise.
---
---@return bool @ IsEmpty
function Map:IsEmpty() end

---
--- Returns `true` if the [Map] is a heroic, `false` otherwise.
---
---@return bool @ isHeroic
function Map:IsHeroic() end

---
--- Returns `true` if the [Map] is a raid, `false` otherwise.
---
---@return bool @ isRaid
function Map:IsRaid() end

---
--- Returns the name of the [Map].
---
---@return string @ mapName
function Map:GetName() end

---
--- Returns the height of the [Map] at the given X and Y coordinates.
---
--- In case of no height found nil is returned
---
---@param x float
---@param y float
---@return float @ z
function Map:GetHeight(x, y) end

---
--- Returns the difficulty of the [Map].
---
--- Always returns 0 if the expansion is pre-TBC.
---
---@return int32 @ difficulty
function Map:GetDifficulty() end

---
--- Returns the instance ID of the [Map].
---
---@return uint32 @ instanceId
function Map:GetInstanceId() end

---
--- Returns the player count currently on the [Map] (excluding GMs).
---
---@return uint32 @ playerCount
function Map:GetPlayerCount() end

---
--- Returns the ID of the [Map].
---
---@return uint32 @ mapId
function Map:GetMapId() end

---
--- Returns the area ID of the [Map] at the specified X, Y, and Z coordinates.
---
---@param x float
---@param y float
---@param z float
---@param phasemask uint32 @ = PHASEMASK_NORMAL
---@return uint32 @ areaId
function Map:GetAreaId(x, y, z, phasemask) end

---
--- Returns a [WorldObject] by its GUID from the map if it is spawned.
---
---@param guid ObjectGuid
---@return WorldObject @ object
function Map:GetWorldObject(guid) end

---
--- Sets the [Weather] type based on [WeatherType] and grade supplied.
---
---     enum WeatherType
---     {
---         WEATHER_TYPE_FINE       = 0,
---         WEATHER_TYPE_RAIN       = 1,
---         WEATHER_TYPE_SNOW       = 2,
---         WEATHER_TYPE_STORM      = 3,
---         WEATHER_TYPE_THUNDERS   = 86,
---         WEATHER_TYPE_BLACKRAIN  = 90
---     };
---
---@param zone uint32 @ : id of the zone to set the weather for
---@param type WeatherType @ : the [WeatherType], see above available weather types
---@param grade float @ : the intensity/grade of the [Weather], ranges from 0 to 1
function Map:SetWeather(zone, type, grade) end

---
--- Gets the instance data table for the [Map], if it exists.
---
--- The instance must be scripted using Eluna for this to succeed.
--- If the instance is scripted in C++ this will return `nil`.
---
---@return table @ instance_data, : instance data table, or `nil`
function Map:GetInstanceData() end

---
--- Saves the [Map]'s instance data to the database.
function Map:SaveInstanceData() end

---
--- eturns a table with all the current [Player]s in the map
---
---    enum TeamId
---    {
---        TEAM_ALLIANCE = 0,
---        TEAM_HORDE = 1,
---        TEAM_NEUTRAL = 2
---    };
---
---@param team TeamId @ : optional check team of the [Player], Alliance, Horde or Neutral (All)
---@return table @ mapPlayers
function Map:GetPlayers(team) end

return Map

