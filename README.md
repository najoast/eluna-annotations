# eluna-annotations
Emmylua annotations for the Eluna Lua Engine

## Installation
1. Install [EmmyLua](https://emmylua.github.io/annotation.html) for your IDE (VSCode, IntelliJ, etc.)
2. Install [Eluna](https://github.com/azerothcore/mod-eluna) for your AzerothCore server
3. Clone this repo to any directory of your lua scripts

## Usage
Once installed, you can use annotations in your lua scripts. For example, if you want to use the `Player` class, you can use the following code:

```lua
---@type Player
local p

-- p is now a Player object known to the IDE
-- You can use the autocomplete feature to see all the available methods
p:SendBroadcastMessage("Hello World!")
```

See the [EmmyLua](https://emmylua.github.io/annotation.html) documentation for more information.
