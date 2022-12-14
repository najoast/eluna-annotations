-- Code generated by eluna-annotations-generator, PLEASE DO NOT EDIT

---@class Group
local Group = {}

---
--- Returns 'true' if the [Player] is the [Group] leader
---
---@param guid ObjectGuid @ : guid of a possible leader
---@return bool @ isLeader
function Group:IsLeader(guid) end

---
--- Returns 'true' if the [Group] is full
---
---@return bool @ isFull
function Group:IsFull() end

---
--- Returns 'true' if the [Group] is a LFG group
---
---@return bool @ isLFGGroup
function Group:IsLFGGroup() end

---
--- Returns 'true' if the [Group] is a raid [Group]
---
---@return bool @ isRaid
function Group:IsRaidGroup() end

---
--- Returns 'true' if the [Group] is a battleground [Group]
---
---@return bool @ isBG
function Group:IsBGGroup() end

---
--- Returns 'true' if the [Player] is a member of this [Group]
---
---@param guid ObjectGuid @ : guid of a player
---@return bool @ isMember
function Group:IsMember(guid) end

---
--- Returns 'true' if the [Player] is an assistant of this [Group]
---
---@param guid ObjectGuid @ : guid of a player
---@return bool @ isAssistant
function Group:IsAssistant(guid) end

---
--- Returns 'true' if the [Player]s are in the same subgroup in this [Group]
---
---@param player1 Player @ : first [Player] to check
---@param player2 Player @ : second [Player] to check
---@return bool @ sameSubGroup
function Group:SameSubGroup(player1, player2) end

---
--- Returns 'true' if the subgroup has free slots in this [Group]
---
---@param subGroup uint8 @ : subGroup ID to check
---@return bool @ hasFreeSlot
function Group:HasFreeSlotSubGroup(subGroup) end

---
--- Adds a new member to the [Group]
---
---@param player Player @ : [Player] to add to the group
---@return bool @ added, : true if member was added
function Group:AddMember(player) end

---
--- Returns a table with the [Player]s in this [Group]
---
---@return table @ groupPlayers, : table of [Player]s
function Group:GetMembers() end

---
--- Returns [Group] leader GUID
---
---@return ObjectGuid @ leaderGUID
function Group:GetLeaderGUID() end

---
--- Returns the [Group]'s GUID
---
---@return ObjectGuid @ groupGUID
function Group:GetGUID() end

---
--- Returns a [Group] member's GUID by their name
---
---@param name string @ : the [Player]'s name
---@return ObjectGuid @ memberGUID
function Group:GetMemberGUID(name) end

---
--- Returns the member count of this [Group]
---
---@return uint32 @ memberCount
function Group:GetMembersCount() end

---
--- Returns the [Player]'s subgroup ID of this [Group]
---
---@param guid ObjectGuid @ : guid of the player
---@return uint8 @ subGroupID, : a valid subgroup ID or MAX_RAID_SUBGROUPS+1
function Group:GetMemberGroup(guid) end

---
--- Sets the leader of this [Group]
---
---@param guid ObjectGuid @ : guid of the new leader
function Group:SetLeader(guid) end

---
--- Sends a specified [WorldPacket] to this [Group]
---
---@param packet WorldPacket @ : the [WorldPacket] to send
---@param ignorePlayersInBg bool @ : ignores [Player]s in a battleground
---@param ignore ObjectGuid @ : ignore a [Player] by their GUID
function Group:SendPacket(packet, ignorePlayersInBg, ignore) end

---
--- Removes a [Player] from this [Group] and returns 'true' if successful
---
--- <pre>
--- enum RemoveMethod
--- {
---     GROUP_REMOVEMETHOD_DEFAULT  = 0,
---     GROUP_REMOVEMETHOD_KICK     = 1,
---     GROUP_REMOVEMETHOD_LEAVE    = 2,
---     GROUP_REMOVEMETHOD_KICK_LFG = 3
--- };
--- </pre>
---
---@param guid ObjectGuid @ : guid of the player to remove
---@param method RemoveMethod @ : method used to remove the player
---@return bool @ removed
function Group:RemoveMember(guid, method) end

---
--- Disbands this [Group]
---
function Group:Disband() end

---
--- Converts this [Group] to a raid [Group]
---
function Group:ConvertToRaid() end

---
--- Sets the member's subGroup
---
---@param guid ObjectGuid @ : guid of the player to move
---@param groupID uint8 @ : the subGroup's ID
function Group:SetMembersGroup(guid, groupID) end

---
--- Sets the target icon of an object for the [Group]
---
---@param icon uint8 @ : the icon (Skull, Square, etc)
---@param target ObjectGuid @ : GUID of the icon target, 0 is to clear the icon
---@param setter ObjectGuid @ : GUID of the icon setter
function Group:SetTargetIcon(icon, target, setter) end

return Group

