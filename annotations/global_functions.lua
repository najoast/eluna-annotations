
---
--- Returns Lua engine's name.
--- Always returns "ElunaEngine" on Eluna.
---@return string @ engineName
function GetLuaEngine() return "" end

---
--- Returns emulator's name.
--- The result will be either `MaNGOS`, `cMaNGOS`, or `TrinityCore`.
---@return string
function GetCoreName() return "" end

---
--- Returns emulator .conf RealmID
--- for MaNGOS returns the realmID as it is stored in the core.
--- for TrinityCore returns the realmID as it is in the conf file.
---@return uint32 @ realmID
function GetRealmID() return 0 end

---
--- Returns emulator version
--- - For TrinityCore returns the date of the last revision, e.g. `2015-08-26 22:53:12 +0300`
--- - For cMaNGOS returns the date and time of the last revision, e.g. `2015-09-06 13:18:50`
--- - for MaNGOS returns the version number as string, e.g. `21000`
---@return string @ version
function GetCoreVersion() return "" end

---
--- Returns emulator's supported expansion.
--- Expansion is 0 for pre-TBC, 1 for TBC, 2 for WotLK, and 3 for Cataclysm.
---@return uint32 @ expansion
function GetExpansion() return 0 end

---
--- Returns [Quest] template
---@param questId uint32 @ [Quest] entry ID
---@return Quest @ quest
function GetQuest(questId) end

---
--- Finds and Returns [Player] by guid if found
---@param guid ObjectGuid @ guid of the [Player], you can get it with [Object:GetGUID]
---@return Player @ player
function GetPlayerByGUID(guid) end

---
--- Finds and Returns [Player] by name if found
---@param name string @ name of the [Player]
---@return Player @ player
function GetPlayerByName(name) end

---
--- Returns game time in seconds
---@return uint32 @ time
function GetGameTime() return 0 end

---
--- Returns a table with all the current [Player]s in the world
--- Does not return players that may be teleporting or otherwise not on any map.
---@param team TeamId @ default TEAM_NEUTRAL, optional check team of the [Player], Alliance, Horde or Neutral (All)
---@param onlyGM bool @ default false, optional check if GM only
---@return table @ worldPlayers
function GetPlayersInWorld(team, onlyGM) end

---
--- Returns a [Guild] by name.
---@param name string @ name of the [Guild]
---@return nil|Guild @ the Guild, or `nil` if it doesn't exist
function GetGuildByName(name) end

---
--- Returns a [Map] by ID.
---@param mapId uint32 @ see [Map.dbc](https://github.com/cmangos/issues/wiki/Map.dbc)
---@param instanceId uint32 @ default 0 : required if the map is an instance, otherwise don't pass anything
---@return nil|Map @ the Map, or `nil` if it doesn't exist
function GetMapById(mapId, instanceId) end

---
--- Returns [Guild] by the leader's GUID
---@param guid ObjectGuid @ the guid of a [Guild] leader, you can get it with [Object:GetGUID]
---@return nil|Guild @ guild, or `nil` if it doesn't exist
function GetGuildByLeaderGUID(guid) end

---
--- Returns the amount of [Player]s in the world.
---@return uint32 @ playerCount
function GetPlayerCount() return 0 end

---
--- Builds a [Player]'s GUID
--- [Player] GUID consist of low GUID and type ID
--- [Player] and [Creature] for example can have the same low GUID but not GUID.
---@param lowguid uint32 @ low GUID of the [Player]
---@return ObjectGuid @ guid
function GetPlayerGUID(lowguid) end

---
--- Builds an [Item]'s GUID.
--- [Item] GUID consist of low GUID and type ID
--- [Item] and [Creature] for example can have the same low GUID but not GUID.
---@param lowguid uint32 @ low GUID of the [Item]
---@return ObjectGuid @ guid
function GetItemGUID(lowguid) end

---
--- Builds a [GameObject]'s GUID.
--- A GameObject's GUID consist of entry ID, low GUID and type ID
--- A [Player] and GameObject for example can have the same low GUID but not GUID.
---@param lowguid uint32 @ low GUID of the [GameObject]
---@param entry uint32 @ entry ID of the [GameObject]
---@return ObjectGuid @ guid
function GetObjectGUID(lowguid, entry) end

---
--- Builds a [Creature]'s GUID.
--- A [Creature]'s GUID consist of entry ID, low GUID and type ID
--- A [Player] and [Creature] for example can have the same low GUID but not GUID.
---@param lowguid uint32 @ low GUID of the [Creature]
---@param entry uint32 @ entry ID of the [Creature]
---@return ObjectGuid @ guid
function GetUnitGUID(lowguid, entry) end

--- Returns the low GUID from a GUID.
---
--- A GUID consists of a low GUID, type ID, and possibly an entry ID depending on the type ID.
---
--- Low GUID is an ID to distinct the objects of the same type.
---
--- [Player] and [Creature] for example can have the same low GUID but not GUID.
---
--- On TrinityCore all low GUIDs are different for all objects of the same type.
--- For example creatures in instances are assigned new GUIDs when the Map is created.
---
--- On MaNGOS and cMaNGOS low GUIDs are unique only on the same map.
--- For example creatures in instances use the same low GUID assigned for that spawn in the database.
--- This is why to identify a creature you have to know the instanceId and low GUID. See [Map:GetIntstanceId]
---
---@param guid ObjectGuid @ GUID of an [Object]
---@return uint32 @ lowguid, low GUID of the [Object]
function GetGUIDLow(guid) end

---
--- Returns an chat link for an [Item].
---@param entry uint32 @ entry ID of an [Item]
---@param locale LocaleConstant @ default DEFAULT_LOCALE, locale to return the [Item] name in
---@return string @ itemLink
function GetItemLink(entry, locale) end

---
--- Returns the type ID from a GUID.
---
--- Type ID is different for each type ([Player], [Creature], [GameObject], etc.).
---
--- GUID consist of entry ID, low GUID, and type ID.
---
---@param guid ObjectGuid @ GUID of an [Object]
---@return int32 @ typeId, type ID of the [Object]
function GetGUIDType(guid) end

---
--- Returns the entry ID from a GUID.
---
--- GUID consist of entry ID, low GUID, and type ID.
---
---@param guid ObjectGuid @ GUID of an [Creature] or [GameObject]
---@return uint32 @ entry : entry ID, or `0` if `guid` is not a [Creature] or [GameObject]
function GetGUIDEntry(guid) end

---
--- Returns the area or zone's name.
---@param areaOrZoneId uint32 @ area ID or zone ID
---@param locale LocaleConstant @ default: DEFAULT_LOCALE, locale to return the name in
---@return string @ areaOrZoneName
function GetAreaName(areaOrZoneId, locale) end

---
--- Returns the currently active game events.
---@return table @ activeEvents
function GetActiveGameEvents() end

function RegisterEntryHelper() end
function RegisterEventHelper() end
function RegisterUniqueHelper() end

---
--- Registers a server event handler.
---@param event ServerEvents @ server event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterServerEvent(event, func, shots) end

---
--- Registers a [Player] event handler.
---@param event PlayerEvents @ player event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterPlayerEvent(event, func, shots) end

---
--- Registers a [Guild] event handler.
---@param event GuildEvents @ guild event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterGuildEvent(event, func, shots) end

---
--- Registers a [Group] event handler.
---@param event GroupEvents @ group event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterGroupEvent(event, func, shots) end

---
--- Registers a [BattleGround] event handler.
---@param event BGEvents @ battleground event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterBGEvent(event, func, shots) end

---
--- Registers a [WorldPacket] event handler.
---@param entry uint32 @ opcode of the [WorldPacket]
---@param event PacketEvents @ packet event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterPacketEvent(entry, event, func, shots) end

---
--- Registers a [Creature] gossip event handler.
---@param entry uint32 @ entry ID of the [Creature]
---@param event GossipEvents @ gossip event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterCreatureGossipEvent(entry, event, func, shots) end

---
--- Registers a [GameObject] gossip event handler.
---@param entry uint32 @ entry ID of the [GameObject]
---@param event GossipEvents @ gossip event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterGameObjectGossipEvent(entry, event, func, shots) end

---
--- Registers an [Item] event handler.
---@param entry uint32 @ entry ID of the [Item]
---@param event ItemEvents @ item event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterItemEvent(entry, event, func, shots) end

---
--- Registers an [Item] gossip event handler.
---@param entry uint32 @ entry ID of the [Item]
---@param event GossipEvents @ gossip event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterItemGossipEvent(entry, event, func, shots) end

---
--- Registers a [Map] event handler for all instance of a [Map].
---@param mapId uint32 @ map ID
---@param event MapEvents @ map event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterMapEvent(mapId, event, func, shots) end

---
--- Registers a [Map] event handler for one instance of a [Map].
---@param instanceId uint32 @ ID of an instance of a [Map]
---@param event MapEvents @ map event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterInstanceEvent(instanceId, event, func, shots) end

---
--- Registers a [Player] gossip event handler.
--- Note that you can not use `GOSSIP_EVENT_ON_HELLO` with this hook. It does nothing since players dont have an "on hello".
---@param menuId uint32 @ Player gossip menu Id
---@param event GossipEvents @ Player gossip event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterPlayerGossipEvent(menuId, event, func, shots) end

---
--- Registers a [Creature] event handler.
---@param entry uint32 @ the ID of one or more Creatures
---@param event CreatureEvents @ creature event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterCreatureEvent(entry, event, func, shots) end

---
--- Registers a [Creature] event handler for a *single* [Creature].
---@param guid ObjectGuid @ the GUID of a single Creature
---@param instanceId uint32 @ the instance ID of a single [Creature]
---@param event CreatureEvents @ creature event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterUniqueCreatureEvent(guid, instanceId, event, func, shots) end

---
--- Registers a [GameObject] event handler.
---@param entry uint32 @ GameObject entry ID
---@param event GameObjectEvents @ GameObject event ID
---@param func function @ function that will be called when the event occurs
---@param shots uint32 @ default 0, the number of times the function will be called, 0 means "always call this function"
---@return function @ cancel function: a function that cancels the binding when called
function RegisterGameObjectEvent(entry, event, func, shots) end

---
--- Reloads the Lua engine.
function ReloadEluna() end

---
--- Runs a command.
---@param command string @ the command to run
function RunCommand(command) end

---
--- Sends a message to all [Player]s online.
---@param message string @ the message to send
function SendWorldMessage(message) end

---
--- Executes a SQL query on the world database and returns an [ElunaQuery].
---
--- The query is always executed synchronously
---   (i.e. execution halts until the query has finished and then results are returned).
--- 
---     local Q = WorldDBQuery("SELECT entry, name FROM creature_template LIMIT 10")
---     if Q then
---         repeat
---             local entry, name = Q:GetUInt32(0), Q:GetString(1)
---             print(entry, name)
---         until not Q:NextRow()
---     end
---
---@param sql string @ query to execute
---@return nil|ElunaQuery @ results or nil if no rows found or nil if no rows found
function WorldDBQuery(sql) end

---
--- Executes a SQL query on the world database.
--- 
--- The query may be executed *asynchronously* (at a later, unpredictable time).
--- If you need to execute the query synchronously, use [Global:WorldDBQuery] instead.
---
--- Any results produced are ignored.
--- If you need results from the query, use [Global:WorldDBQuery] instead.
--- 
---     WorldDBExecute("DELETE FROM my_table")
---
---@param sql string @ query to execute
function WorldDBExecute(sql) end

---
--- Executes a SQL query on the character database and returns an [ElunaQuery].
---
--- The query is always executed synchronously
---   (i.e. execution halts until the query has finished and then results are returned).
---
--- For an example see [Global:WorldDBQuery].
---
---@param sql string @ query to execute
---@return ElunaQuery @ results or nil if no rows found
function CharDBQuery(sql) end

---
--- Executes a SQL query on the character database.
---
--- The query may be executed *asynchronously* (at a later, unpredictable time).
--- If you need to execute the query synchronously, use [Global:CharDBQuery] instead.
---
--- Any results produced are ignored.
--- If you need results from the query, use [Global:CharDBQuery] instead.
---
---     CharDBExecute("DELETE FROM my_table")
---
---@param sql string @ query to execute
function CharDBExecute(sql) end

---
--- Executes a SQL query on the login database and returns an [ElunaQuery].
---
--- The query is always executed synchronously
---   (i.e. execution halts until the query has finished and then results are returned).
---
--- For an example see [Global:WorldDBQuery].
---
---@param sql string @ query to execute
---@return ElunaQuery @ results or nil if no rows found
function AuthDBQuery(sql) end

--- Executes a SQL query on the login database.
---
--- The query may be executed *asynchronously* (at a later, unpredictable time).
--- If you need to execute the query synchronously, use [Global:AuthDBQuery] instead.
---
--- Any results produced are ignored.
--- If you need results from the query, use [Global:AuthDBQuery] instead.
---
---     AuthDBExecute("DELETE FROM my_table")
---
---@param sql string @ query to execute
function AuthDBExecute(sql) end
