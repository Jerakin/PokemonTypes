-- Module contains type tables for all 18 Pokemon types. A table of a type
-- contain 18 attributes corresponding to its weakness to attacks of all types.

local M = {}

-- util to convert the type property to a string
M.to_string = {
	normal = "Normal",
	fire = "Fire",
	water = "Water",
	electric = "Electric",
	grass = "Grass",
	ice = "Ice",
	fighting = "Fighting",
	poison = "Poison",
	ground = "Ground",
	flying = "Flying",
	psychic = "Psychic",
	bug = "Bug",
	rock = "Rock",
	ghost = "Ghost",
	dragon = "Dragon",
	dark = "Dark",
	steel = "Steel",
	fairy = "Fairy"
}

-- This is type that will be used for all types, everything defaults to 1
-- with the different types changing type properties as needed.
M.BaseType = {
	__pokemon_type = true,
	normal = 1.0,
	fire = 1.0,
	water = 1.0,
	electric = 1.0,
	grass = 1.0,
	ice = 1.0,
	fighting = 1.0,
	poison = 1.0,
	ground = 1.0,
	flying = 1.0,
	psychic = 1.0,
	bug = 1.0,
	rock = 1.0,
	ghost = 1.0,
	dragon = 1.0,
	dark = 1.0,
	steel = 1.0,
	fairy = 1.0
}

function M.BaseType:__constructor()
	local o = {}
	setmetatable(o, self)
	self.__index = self
	return o
end

M.Normal = M.BaseType:__constructor()
M.Normal.fighting = 2.0
M.Normal.ghost = 0.0

M.Fire = M.BaseType:__constructor()
M.Fire.fire = 0.5
M.Fire.water = 2.0
M.Fire.grass = 0.5
M.Fire.ice = 0.5
M.Fire.ground = 2.0
M.Fire.bug = 0.5
M.Fire.rock = 2.0
M.Fire.steel = 0.5
M.Fire.fairy = 0.5

M.Fire = M.BaseType:__constructor()
M.Fire.fire = 0.5
M.Fire.water = 0.5
M.Fire.electric = 2.0
M.Fire.grass = 2.0
M.Fire.ice = 0.5
M.Fire.steel = 0.5

M.Electric = M.BaseType:__constructor()
M.Electric.electric = 0.5
M.Electric.ground = 2.0
M.Electric.flying = 0.5
M.Electric.steel = 0.5

M.Grass = M.BaseType:__constructor()
M.Grass.fire = 2.0
M.Grass.water = 0.5
M.Grass.electric = 0.5
M.Grass.grass = 0.5
M.Grass.ice = 2.0
M.Grass.poison = 2.0
M.Grass.ground = 0.5
M.Grass.flying = 2.0
M.Grass.bug = 2.0

M.Ice = M.BaseType:__constructor()
M.Ice.fire = 2.0
M.Ice.ice = 0.5
M.Ice.fighting = 2.0
M.Ice.rock = 2.0
M.Ice.steel = 2.0

M.Fighting = M.BaseType:__constructor()
M.Fighting.flying = 2.0
M.Fighting.psychic = 2.0
M.Fighting.bug = 0.5
M.Fighting.rock = 0.5
M.Fighting.dark = 0.5
M.Fighting.fairy = 2.0

M.Poison = M.BaseType:__constructor()
M.Poison.grass = 0.5
M.Poison.fighting = 0.5
M.Poison.poison = 0.5
M.Poison.ground = 2.0
M.Poison.psychic = 2.0
M.Poison.bug = 0.5
M.Poison.fairy = 0.5

M.Ground = M.BaseType:__constructor()
M.Ground.water = 2.0
M.Ground.electric = 0.0
M.Ground.grass = 2.0
M.Ground.ice = 2.0
M.Ground.poison = 0.5
M.Ground.rock = 0.5

M.Flying = M.BaseType:__constructor()
M.Flying.electric = 2.0
M.Flying.grass = 0.5
M.Flying.ice = 2.0
M.Flying.fighting = 0.5
M.Flying.ground = 0.0
M.Flying.bug = 0.5
M.Flying.rock = 2.0

M.Psychic = M.BaseType:__constructor()
M.Psychic.fighting = 0.5
M.Psychic.psychic = 0.5
M.Psychic.bug = 2.0
M.Psychic.ghost = 2.0
M.Psychic.dark = 2.0


M.Bug = M.BaseType:__constructor()
M.Bug.fire = 2.0
M.Bug.grass = 0.5
M.Bug.fighting = 0.5
M.Bug.ground = 0.5
M.Bug.flying = 2.0
M.Bug.rock = 2.0


M.Rock = M.BaseType:__constructor()
M.Rock.normal = 0.5
M.Rock.fire = 0.5
M.Rock.water = 2.0
M.Rock.grass = 2.0
M.Rock.fighting = 2.0
M.Rock.poison = 0.5
M.Rock.ground = 2.0
M.Rock.flying = 0.5
M.Rock.steel = 2.0

M.Ghost = M.BaseType:__constructor()
M.Ghost.normal = 0.0
M.Ghost.fighting = 0.0
M.Ghost.poison = 0.5
M.Ghost.bug = 0.5
M.Ghost.ghost = 2.0
M.Ghost.dark = 2.0

M.Dragon = M.BaseType:__constructor()
M.Dragon.fire = 0.5
M.Dragon.water = 0.5
M.Dragon.electric = 0.5
M.Dragon.grass = 0.5
M.Dragon.ice = 2.0
M.Dragon.dragon = 2.0
M.Dragon.fairy = 2.0

M.Dark = M.BaseType:__constructor()
M.Dark.fighting = 2.0
M.Dark.psychic = 0.0
M.Dark.bug = 2.0
M.Dark.ghost = 0.5
M.Dark.dark = 0.5
M.Dark.fairy = 2.0

M.Steel = M.BaseType:__constructor()
M.Steel.normal = 0.5
M.Steel.fire = 2.0
M.Steel.grass = 0.5
M.Steel.ice = 0.5
M.Steel.fighting = 2.0
M.Steel.poison = 0.0
M.Steel.ground = 2.0
M.Steel.flying = 0.5
M.Steel.psychic = 0.5
M.Steel.bug = 0.5
M.Steel.rock = 0.5
M.Steel.dragon = 0.5
M.Steel.steel = 0.5
M.Steel.fairy = 0.5

M.Fairy = M.BaseType:__constructor()
M.Fairy.fighting = 0.5
M.Fairy.poison = 2.0
M.Fairy.bug = 0.5
M.Fairy.dragon = 0.0
M.Fairy.dark = 0.5
M.Fairy.steel = 2.0

return M