-- Code generated by eluna-annotations-generator, PLEASE DO NOT EDIT

---@class Item
local Item = {}

---
--- Returns 'true' if the [Item] is soulbound, 'false' otherwise
---
---@return bool @ isSoulBound
function Item:IsSoulBound() end

---
--- Returns 'true' if the [Item] is account bound, 'false' otherwise
---
---@return bool @ isAccountBound
function Item:IsBoundAccountWide() end

---
--- Returns 'true' if the [Item] is bound to a [Player] by an enchant, 'false' otehrwise
---
---@return bool @ isBoundByEnchant
function Item:IsBoundByEnchant() end

---
--- Returns 'true' if the [Item] is not bound to the [Player] specified, 'false' otherwise
---
---@param player Player @ : the [Player] object to check the item against
---@return bool @ isNotBound
function Item:IsNotBoundToPlayer(player) end

---
--- Returns 'true' if the [Item] is locked, 'false' otherwise
---
---@return bool @ isLocked
function Item:IsLocked() end

---
--- Returns 'true' if the [Item] is a bag, 'false' otherwise
---
---@return bool @ isBag
function Item:IsBag() end

---
--- Returns 'true' if the [Item] is a currency token, 'false' otherwise
---
---@return bool @ isCurrencyToken
function Item:IsCurrencyToken() end

---
--- Returns 'true' if the [Item] is a not an empty bag, 'false' otherwise
---
---@return bool @ isNotEmptyBag
function Item:IsNotEmptyBag() end

---
--- Returns 'true' if the [Item] is broken, 'false' otherwise
---
---@return bool @ isBroken
function Item:IsBroken() end

---
--- Returns 'true' if the [Item] can be traded, 'false' otherwise
---
---@return bool @ isTradeable
function Item:CanBeTraded() end

---
--- Returns 'true' if the [Item] is currently in a trade window, 'false' otherwise
---
---@return bool @ isInTrade
function Item:IsInTrade() end

---
--- Returns 'true' if the [Item] is currently in a bag, 'false' otherwise
---
---@return bool @ isInBag
function Item:IsInBag() end

---
--- Returns 'true' if the [Item] is currently equipped, 'false' otherwise
---
---@return bool @ isEquipped
function Item:IsEquipped() end

---
--- Returns 'true' if the [Item] has the [Quest] specified tied to it, 'false' otherwise
---
---@param questId uint32 @ : the [Quest] id to be checked
---@return bool @ hasQuest
function Item:HasQuest(questId) end

---
--- Returns 'true' if the [Item] is a potion, 'false' otherwise
---
---@return bool @ isPotion
function Item:IsPotion() end

---
--- Returns 'true' if the [Item] is a weapon vellum, 'false' otherwise
---
---@return bool @ isWeaponVellum
function Item:IsWeaponVellum() end

---
--- Returns 'true' if the [Item] is an armor vellum, 'false' otherwise
---
---@return bool @ isArmorVellum
function Item:IsArmorVellum() end

---
--- Returns 'true' if the [Item] is a conjured consumable, 'false' otherwise
---
---@return bool @ isConjuredConsumable
function Item:IsConjuredConsumable() end

---
--- Returns the chat link of the [Item]
---
--- <pre>
--- enum LocaleConstant
--- {
---     LOCALE_enUS = 0,
---     LOCALE_koKR = 1,
---     LOCALE_frFR = 2,
---     LOCALE_deDE = 3,
---     LOCALE_zhCN = 4,
---     LOCALE_zhTW = 5,
---     LOCALE_esES = 6,
---     LOCALE_esMX = 7,
---     LOCALE_ruRU = 8
--- };
--- </pre>
---
---@param locale LocaleConstant @ = DEFAULT_LOCALE : locale to return the [Item]'s name in
---@return string @ itemLink
function Item:GetItemLink(locale) end

---
--- Returns the [Player] who currently owns the [Item]
---
---@return Player @ player, : the [Player] who owns the [Item]
function Item:GetOwner() end

---
--- Returns the [Item]s stack count
---
---@return uint32 @ count
function Item:GetCount() end

---
--- Returns the [Item]s max stack count
---
---@return uint32 @ maxCount
function Item:GetMaxStackCount() end

---
--- Returns the [Item]s current slot
---
---@return uint8 @ slot
function Item:GetSlot() end

---
--- Returns the [Item]s current bag slot
---
---@return uint8 @ bagSlot
function Item:GetBagSlot() end

---
--- Returns the [Item]s enchantment ID by enchant slot specified
---
---@param enchantSlot EnchantmentSlot @ : the enchant slot specified
---@return uint32 @ enchantId, : the id of the enchant slot specified
function Item:GetEnchantmentId(enchantSlot) end

---
--- Returns the spell ID tied to the [Item] by spell index
---
---@param spellIndex uint32 @ : the spell index specified
---@return uint32 @ spellId, : the id of the spell
function Item:GetSpellId(spellIndex) end

---
--- Returns the spell trigger tied to the [Item] by spell index
---
---@param spellIndex uint32 @ : the spell index specified
---@return uint32 @ spellTrigger, : the spell trigger of the specified index
function Item:GetSpellTrigger(spellIndex) end

---
--- Returns class of the [Item]
---
---@return uint32 @ class
function Item:GetClass() end

---
--- Returns subclass of the [Item]
---
---@return uint32 @ subClass
function Item:GetSubClass() end

---
--- Returns the name of the [Item]
---
---@return string @ name
function Item:GetName() end

---
--- Returns the display ID of the [Item]
---
---@return uint32 @ displayId
function Item:GetDisplayId() end

---
--- Returns the quality of the [Item]
---
---@return uint32 @ quality
function Item:GetQuality() end

---
--- Returns the default purchase count of the [Item]
---
---@return uint32 @ count
function Item:GetBuyCount() end

---
--- Returns the purchase price of the [Item]
---
---@return uint32 @ price
function Item:GetBuyPrice() end

---
--- Returns the sell price of the [Item]
---
---@return uint32 @ price
function Item:GetSellPrice() end

---
--- Returns the inventory type of the [Item]
---
---@return uint32 @ inventoryType
function Item:GetInventoryType() end

---
--- Returns the [Player] classes allowed to use this [Item]
---
---@return uint32 @ allowableClass
function Item:GetAllowableClass() end

---
--- Returns the [Player] races allowed to use this [Item]
---
---@return uint32 @ allowableRace
function Item:GetAllowableRace() end

---
--- Returns the [Item]s level
---
---@return uint32 @ itemLevel
function Item:GetItemLevel() end

---
--- Returns the minimum level required to use this [Item]
---
---@return uint32 @ requiredLevel
function Item:GetRequiredLevel() end

---
--- Returns the random property ID of this [Item]
---
---@return uint32 @ randomPropertyId
function Item:GetRandomProperty() end

---
--- Returns the item set ID of this [Item]
---
---@return uint32 @ itemSetId
function Item:GetItemSet() end

---
--- Returns the bag size of this [Item], 0 if [Item] is not a bag
---
---@return uint32 @ bagSize
function Item:GetBagSize() end

---
--- Sets the [Player] specified as the owner of the [Item]
---
---@param player Player @ : the [Player] specified
function Item:SetOwner(player) end

---
--- Sets the binding of the [Item] to 'true' or 'false'
---
---@param setBinding bool
function Item:SetBinding(setBinding) end

---
--- Sets the stack count of the [Item]
---
---@param count uint32
function Item:SetCount(count) end

---
--- Sets the specified enchantment of the [Item] to the specified slot
---
---@param enchantId uint32 @ : the ID of the enchant to be applied
---@param enchantSlot uint32 @ : the slot for the enchant to be applied to
---@return bool @ enchantmentSuccess, : if enchantment is successfully set to specified slot, returns 'true', otherwise 'false'
function Item:SetEnchantment(enchantId, enchantSlot) end

---
--- Removes an enchant from the [Item] by the specified slot
---
---@param enchantSlot uint32 @ : the slot for the enchant to be removed from
---@return bool @ enchantmentRemoved, : if enchantment is successfully removed from specified slot, returns 'true', otherwise 'false'
function Item:ClearEnchantment(enchantSlot) end

---
--- Saves the [Item] to the database
function Item:SaveToDB() end

return Item

