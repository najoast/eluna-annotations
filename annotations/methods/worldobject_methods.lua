-- Code generated by eluna-annotations-generator, PLEASE DO NOT EDIT

---@class WorldObject
local WorldObject = {}

---
--- Returns the name of the [WorldObject]
---
---@return string @ name
function WorldObject:GetName() end

---
--- Returns the current [Map] object of the [WorldObject]
---
---@return Map @ mapObject
function WorldObject:GetMap() end

---
--- Returns the current phase of the [WorldObject]
---
---@return uint32 @ phase
function WorldObject:GetPhaseMask() end

---
--- ets the [WorldObject]'s phase mask.
---
---@param phaseMask uint32
---@param update bool @ = true : update visibility to nearby objects
function WorldObject:SetPhaseMask(phaseMask, update) end

---
--- Returns the current instance ID of the [WorldObject]
---
---@return uint32 @ instanceId
function WorldObject:GetInstanceId() end

---
--- Returns the current area ID of the [WorldObject]
---
---@return uint32 @ areaId
function WorldObject:GetAreaId() end

---
--- Returns the current zone ID of the [WorldObject]
---
---@return uint32 @ zoneId
function WorldObject:GetZoneId() end

---
--- Returns the current map ID of the [WorldObject]
---
---@return uint32 @ mapId
function WorldObject:GetMapId() end

---
--- Returns the current X coordinate of the [WorldObject]
---
---@return float @ x
function WorldObject:GetX() end

---
--- Returns the current Y coordinate of the [WorldObject]
---
---@return float @ y
function WorldObject:GetY() end

---
--- Returns the current Z coordinate of the [WorldObject]
---
---@return float @ z
function WorldObject:GetZ() end

---
--- Returns the current orientation of the [WorldObject]
---
---@return float @ orientation, / facing
function WorldObject:GetO() end

---
--- Returns the coordinates and orientation of the [WorldObject]
---
---@return float @ o, : facing / orientation of  the [WorldObject]
function WorldObject:GetLocation() end

---
--- Returns the nearest [Player] object in sight of the [WorldObject] or within the given range
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return Player @ nearestPlayer
function WorldObject:GetNearestPlayer(range, hostile, dead) end

---
--- Returns the nearest [GameObject] object in sight of the [WorldObject] or within the given range and/or with a specific entry ID
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param entryId uint32 @ = 0 : optionally set entry ID of game object to find
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@return GameObject @ nearestGameObject
function WorldObject:GetNearestGameObject(range, entryId, hostile) end

---
--- Returns the nearest [Creature] object in sight of the [WorldObject] or within the given range and/or with a specific entry ID
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param entryId uint32 @ = 0 : optionally set entry ID of creature to find
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return Creature @ nearestCreature
function WorldObject:GetNearestCreature(range, entryId, hostile, dead) end

---
--- Returns a table of [Player] objects in sight of the [WorldObject] or within the given range
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return table @ playersInRange, : table of [Player]s
function WorldObject:GetPlayersInRange(range, hostile, dead) end

---
--- Returns a table of [Creature] objects in sight of the [WorldObject] or within the given range and/or with a specific entry ID
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param entryId uint32 @ = 0 : optionally set entry ID of creatures to find
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return table @ creaturesInRange, : table of [Creature]s
function WorldObject:GetCreaturesInRange(range, entryId, hostile, dead) end

---
--- Returns a table of [GameObject] objects in sight of the [WorldObject] or within the given range and/or with a specific entry ID
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param entryId uint32 @ = 0 : optionally set entry ID of game objects to find
---@param hostile uint32 @ = 0 : 0 both, 1 hostile, 2 friendly
---@return table @ gameObjectsInRange, : table of [GameObject]s
function WorldObject:GetGameObjectsInRange(range, entryId, hostile) end

---
--- Returns nearest [WorldObject] in sight of the [WorldObject].
--- The distance, type, entry and hostility requirements the [WorldObject] must match can be passed.
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param type TypeMask @ = 0 : the [TypeMask] that the [WorldObject] must be. This can contain multiple types. 0 will be ingored
---@param entry uint32 @ = 0 : the entry of the [WorldObject], 0 will be ingored
---@param hostile uint32 @ = 0 : specifies whether the [WorldObject] needs to be 1 hostile, 2 friendly or 0 either
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return WorldObject @ worldObject
function WorldObject:GetNearObject(range, type, entry, hostile, dead) end

---
--- Returns a table of [WorldObject]s in sight of the [WorldObject].
--- The distance, type, entry and hostility requirements the [WorldObject] must match can be passed.
---
---
---@param range float @ = 533.33333 : optionally set range. Default range is grid size
---@param type TypeMask @ = 0 : the [TypeMask] that the [WorldObject] must be. This can contain multiple types. 0 will be ingored
---@param entry uint32 @ = 0 : the entry of the [WorldObject], 0 will be ingored
---@param hostile uint32 @ = 0 : specifies whether the [WorldObject] needs to be 1 hostile, 2 friendly or 0 either
---@param dead uint32 @ = 1 : 0 both, 1 alive, 2 dead
---@return table @ worldObjectList, : table of [WorldObject]s
function WorldObject:GetNearObjects(range, type, entry, hostile, dead) end

---
--- Returns the distance from this [WorldObject] to another [WorldObject], or from this [WorldObject] to a point in 3d space.
---
--- The function takes into account the given object sizes. See also [WorldObject:GetExactDistance], [WorldObject:GetDistance2d]
---
--- @proto dist = (obj)
--- @proto dist = (x, y, z)
---
---
---@param obj WorldObject
---@param x float @ : the X-coordinate of the point
---@param y float @ : the Y-coordinate of the point
---@param z float @ : the Z-coordinate of the point
---@return float @ dist, : the distance in yards
function WorldObject:GetDistance(obj, x, y, z) end

---
--- Returns the distance from this [WorldObject] to another [WorldObject], or from this [WorldObject] to a point in 3d space.
---
--- The function does not take into account the given object sizes, which means only the object coordinates are compared. See also [WorldObject:GetDistance], [WorldObject:GetDistance2d]
---
--- @proto dist = (obj)
--- @proto dist = (x, y, z)
---
---
---@param obj WorldObject
---@param x float @ : the X-coordinate of the point
---@param y float @ : the Y-coordinate of the point
---@param z float @ : the Z-coordinate of the point
---@return float @ dist, : the distance in yards
function WorldObject:GetExactDistance(obj, x, y, z) end

---
--- Returns the distance from this [WorldObject] to another [WorldObject], or from this [WorldObject] to a point in 2d space.
---
--- The function takes into account the given object sizes. See also [WorldObject:GetDistance], [WorldObject:GetExactDistance2d]
---
--- @proto dist = (obj)
--- @proto dist = (x, y)
---
---
---@param obj WorldObject
---@param x float @ : the X-coordinate of the point
---@param y float @ : the Y-coordinate of the point
---@return float @ dist, : the distance in yards
function WorldObject:GetDistance2d(obj, x, y) end

---
--- Returns the distance from this [WorldObject] to another [WorldObject], or from this [WorldObject] to a point in 2d space.
---
--- The function does not take into account the given object sizes, which means only the object coordinates are compared. See also [WorldObject:GetDistance], [WorldObject:GetDistance2d]
---
--- @proto dist = (obj)
--- @proto dist = (x, y)
---
---
---@param obj WorldObject
---@param x float @ : the X-coordinate of the point
---@param y float @ : the Y-coordinate of the point
---@return float @ dist, : the distance in yards
function WorldObject:GetExactDistance2d(obj, x, y) end

---
--- Returns the x, y and z of a point dist away from the [WorldObject].
---
---
---@param distance float @ : specifies the distance of the point from the [WorldObject] in yards
---@param angle float @ : specifies the angle of the point relative to the orientation / facing of the [WorldObject] in radians
---@return float @ z
function WorldObject:GetRelativePoint(distance, angle) end

---
--- Returns the angle between this [WorldObject] and another [WorldObject] or a point.
---
--- The angle is the angle between two points and orientation will be ignored.
---
--- @proto dist = (obj)
--- @proto dist = (x, y)
---
---
---@param object WorldObject
---@param x float
---@param y float
---@return float @ angle, : angle in radians in range 0..2*pi
function WorldObject:GetAngle(object, x, y) end

---
--- Sends a [WorldPacket] to [Player]s in sight of the [WorldObject].
---
---@param packet WorldPacket
function WorldObject:SendPacket(packet) end

---
--- Spawns a [GameObject] at specified location.
---
---@param entry uint32 @ : [GameObject] entry ID
---@param x float
---@param y float
---@param z float
---@param o float
---@param respawnDelay uint32 @ = 30 : respawn time in seconds
---@return GameObject @ gameObject
function WorldObject:SummonGameObject(entry, x, y, z, o, respawnDelay) end

---
--- Spawns the creature at specified location.
---
---     enum TempSummonType
---     {
---         TEMPSUMMON_TIMED_OR_DEAD_DESPAWN       = 1, // despawns after a specified time OR when the creature disappears
---         TEMPSUMMON_TIMED_OR_CORPSE_DESPAWN     = 2, // despawns after a specified time OR when the creature dies
---         TEMPSUMMON_TIMED_DESPAWN               = 3, // despawns after a specified time
---         TEMPSUMMON_TIMED_DESPAWN_OUT_OF_COMBAT = 4, // despawns after a specified time after the creature is out of combat
---         TEMPSUMMON_CORPSE_DESPAWN              = 5, // despawns instantly after death
---         TEMPSUMMON_CORPSE_TIMED_DESPAWN        = 6, // despawns after a specified time after death
---         TEMPSUMMON_DEAD_DESPAWN                = 7, // despawns when the creature disappears
---         TEMPSUMMON_MANUAL_DESPAWN              = 8, // despawns when UnSummon() is called
---         TEMPSUMMON_TIMED_OOC_OR_CORPSE_DESPAWN = 9, // despawns after a specified time (OOC) OR when the creature dies
---         TEMPSUMMON_TIMED_OOC_OR_DEAD_DESPAWN   = 10 // despawns after a specified time (OOC) OR when the creature disappears
---     };
---
---@param entry uint32 @ : [Creature]'s entry ID
---@param x float
---@param y float
---@param z float
---@param o float
---@param spawnType TempSummonType @ = MANUAL_DESPAWN : defines how and when the creature despawns
---@param despawnTimer uint32 @ = 0 : despawn time in milliseconds
---@return Creature @ spawnedCreature
function WorldObject:SpawnCreature(entry, x, y, z, o, spawnType, despawnTimer) end

---
--- Registers a timed event to the [WorldObject]
--- When the passed function is called, the parameters `(eventId, delay, repeats, worldobject)` are passed to it.
--- Repeats will decrease on each call if the event does not repeat indefinitely
---
--- Note that for [Creature] and [GameObject] the timed event timer ticks only if the creature is in sight of someone
--- For all [WorldObject]s the timed events are removed when the object is destoryed. This means that for example a [Player]'s events are removed on logout.
---
---     local function Timed(eventid, delay, repeats, worldobject)
---         print(worldobject:GetName())
---     end
---     worldobject:RegisterEvent(Timed, 1000, 5) -- do it after 1 second 5 times
---     worldobject:RegisterEvent(Timed, {1000, 10000}, 0) -- do it after 1 to 10 seconds forever
---
--- @proto eventId = (function, delay)
--- @proto eventId = (function, delaytable)
--- @proto eventId = (function, delay, repeats)
--- @proto eventId = (function, delaytable, repeats)
---
---@param func function @ : function to trigger when the time has passed
---@param delay uint32 @ : set time in milliseconds for the event to trigger
---@param delaytable table @ : a table `{min, max}` containing the minimum and maximum delay time
---@param repeats uint32 @ = 1 : how many times for the event to repeat, 0 is infinite
---@return int @ eventId, : unique ID for the timed event used to cancel it or nil
function WorldObject:RegisterEvent(func, delay, delaytable, repeats) end

---
--- Removes the timed event from a [WorldObject] by the specified event ID
---
---@param eventId int @ : event Id to remove
function WorldObject:RemoveEventById(eventId) end

---
--- Removes all timed events from a [WorldObject]
---
function WorldObject:RemoveEvents() end

---
--- Returns true if the given [WorldObject] or coordinates are in the [WorldObject]'s line of sight
---
--- @proto isInLoS = (worldobject)
--- @proto isInLoS = (x, y, z)
---
---@param worldobject WorldObject
---@param x float
---@param y float
---@param z float
---@return bool @ isInLoS
function WorldObject:IsWithinLoS(worldobject, x, y, z) end

---
--- Returns true if the [WorldObject]s are on the same map
---
---@param worldobject WorldObject
---@return bool @ isInMap
function WorldObject:IsInMap(worldobject) end

---
--- Returns true if the point is in the given distance of the [WorldObject]
---
--- Notice that the distance is measured from the edge of the [WorldObject].
---
---@param x float
---@param y float
---@param z float
---@param distance float
---@return bool @ isInDistance
function WorldObject:IsWithinDist3d(x, y, z, distance) end

---
--- Returns true if the point is in the given distance of the [WorldObject]
---
--- The distance is measured only in x,y coordinates.
--- Notice that the distance is measured from the edge of the [WorldObject].
---
---@param x float
---@param y float
---@param distance float
---@return bool @ isInDistance
function WorldObject:IsWithinDist2d(x, y, distance) end

---
--- Returns true if the target is in the given distance of the [WorldObject]
---
--- Notice that the distance is measured from the edge of the [WorldObject]s.
---
---@param target WorldObject
---@param distance float
---@param is3D bool @ = true : if false, only x,y coordinates used for checking
---@return bool @ isInDistance
function WorldObject:IsWithinDist(target, distance, is3D) end

---
--- Returns true if the [WorldObject] is on the same map and within given distance
---
--- Notice that the distance is measured from the edge of the [WorldObject]s.
---
---@param target WorldObject
---@param distance float
---@param is3D bool @ = true : if false, only x,y coordinates used for checking
---@return bool @ isInDistance
function WorldObject:IsWithinDistInMap(target, distance, is3D) end

---
--- Returns true if the target is within given range
---
--- Notice that the distance is measured from the edge of the [WorldObject]s.
---
---@param target WorldObject
---@param minrange float
---@param maxrange float
---@param is3D bool @ = true : if false, only x,y coordinates used for checking
---@return bool @ isInDistance
function WorldObject:IsInRange(target, minrange, maxrange, is3D) end

---
--- Returns true if the point is within given range
---
--- Notice that the distance is measured from the edge of the [WorldObject].
---
---@param x float
---@param y float
---@param minrange float
---@param maxrange float
---@return bool @ isInDistance
function WorldObject:IsInRange2d(x, y, minrange, maxrange) end

---
--- Returns true if the point is within given range
---
--- Notice that the distance is measured from the edge of the [WorldObject].
---
---@param x float
---@param y float
---@param z float
---@param minrange float
---@param maxrange float
---@return bool @ isInDistance
function WorldObject:IsInRange3d(x, y, z, minrange, maxrange) end

---
--- Returns true if the target is in the given arc in front of the [WorldObject]
---
---@param target WorldObject
---@param arc float @ = pi
---@return bool @ isInFront
function WorldObject:IsInFront(target, arc) end

---
--- Returns true if the target is in the given arc behind the [WorldObject]
---
---@param target WorldObject
---@param arc float @ = pi
---@return bool @ isInBack
function WorldObject:IsInBack(target, arc) end

---
--- The [WorldObject] plays music to a [Player]
---
--- If no [Player] provided it will play the music to everyone near.
--- This method does not interrupt previously played music.
---
--- See also [WorldObject:PlayDistanceSound], [WorldObject:PlayDirectSound]
---
---@param music uint32 @ : entry of a music
---@param player Player @ = nil : [Player] to play the music to
function WorldObject:PlayMusic(music, player) end

---
--- The [WorldObject] plays a sound to a [Player]
---
--- If no [Player] provided it will play the sound to everyone near.
--- This method will play sound and does not interrupt prvious sound.
---
--- See also [WorldObject:PlayDistanceSound], [WorldObject:PlayMusic]
---
---@param sound uint32 @ : entry of a sound
---@param player Player @ = nil : [Player] to play the sound to
function WorldObject:PlayDirectSound(sound, player) end

---
--- The [WorldObject] plays a sound to a [Player]
---
--- If no [Player] it will play the sound to everyone near.
--- Sound will fade the further you are from the [WorldObject].
--- This method interrupts previously playing sound.
---
--- See also [WorldObject:PlayDirectSound], [WorldObject:PlayMusic]
---
---@param sound uint32 @ : entry of a sound
---@param player Player @ = nil : [Player] to play the sound to
function WorldObject:PlayDistanceSound(sound, player) end

return WorldObject
