
---@alias int number
---@alias uint number
---@alias uint8 number
---@alias uint16 number
---@alias uint32 number
---@alias uint64 number
---@alias int8 number
---@alias int16 number
---@alias int32 number
---@alias int64 number

---@alias float number
---@alias float32 number
---@alias float64 number
---@alias double number

---@alias bool boolean

---@alias ObjectGuid number
---@alias Opcodes uint32

-- See WorldPacket.h for more info
---@class WorldPacket
---@field public GetOpcode fun(): Opcodes
---@field public GetReceivedTime fun(): number