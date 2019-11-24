local weakness = require "ptypes.weakness"

local M = {}

-- Mapping to weakness
M.Normal = weakness.Normal
M.Fire = weakness.Fire
M.Water = weakness.Water
M.Electric = weakness.Electric
M.Grass = weakness.Grass
M.Ice = weakness.Ice
M.Fighting = weakness.Fighting
M.Poison = weakness.Poison
M.Ground = weakness.Ground
M.Flying = weakness.Flying
M.Psychic = weakness.Psychic
M.Bug = weakness.Bug
M.Rock = weakness.Rock
M.Ghost = weakness.Ghost
M.Dragon = weakness.Dragon
M.Dark = weakness.Dark
M.Steel = weakness.Steel
M.Fairy = weakness.Fairy

-- Make sure that the types are of the correct type
local function __assert_type(type_1, type_2)
	-- Second type is optional
	type_2 = type_2 or weakness.BaseType
	if type(type_1) == "string" and weakness[type_1] then
		type_1 = weakness[type_1]
	elseif type(type_1) == "table" then
		if not type_1.__pokemon_type then
			assert(false, "First type supplied is not valid")
		end
	end
	
	if type(type_2) == "string" and weakness[type_2] then
		type_2 = weakness[type_2]
	elseif type(type_2) == "table" then
		if not type_2.__pokemon_type then
			assert(false, "Second type supplied is not valid")
		end
	end
	
	return type_1, type_2
end

local function type_filter(self, compare_function)
	local result = {}
	for n, t in pairs(self.weaknesses) do
		if compare_function(t) then
			table.insert(result, weakness.to_string[n])
		end
	end
	return result
end

function M.Model(type_1, type_2)
	type_1, type_2 = __assert_type(type_1, type_2)

	local self = {}
	self.weaknesses = {}

	local function __calculate_sums(self, type1, type2)
		self.weaknesses.normal = type1.normal * type2.normal
		self.weaknesses.fire = type1.fire * type2.fire
		self.weaknesses.water = type1.water * type2.water
		self.weaknesses.electric = type1.electric * type2.electric
		self.weaknesses.grass = type1.grass * type2.grass
		self.weaknesses.ice = type1.ice * type2.ice
		self.weaknesses.fighting = type1.fighting * type2.fighting
		self.weaknesses.poison = type1.poison * type2.poison
		self.weaknesses.ground = type1.ground * type2.ground
		self.weaknesses.flying = type1.flying * type2.flying
		self.weaknesses.psychic = type1.psychic * type2.psychic
		self.weaknesses.bug = type1.bug * type2.bug
		self.weaknesses.rock = type1.rock * type2.rock
		self.weaknesses.ghost = type1.ghost * type2.ghost
		self.weaknesses.dragon = type1.dragon * type2.dragon
		self.weaknesses.dark = type1.dark * type2.dark
		self.weaknesses.steel = type1.steel * type2.steel
		self.weaknesses.fairy = type1.fairy * type2.fairy
	end

	-- Calculate the type sums
	__calculate_sums(self, type_1, type_2)

	-- Filter the results into tables
	self.vulnerabilities = type_filter(self, function(a) return a > 1 end)
	self.immunities = type_filter(self, function(a) return a == 0 end)
	self.resistances = type_filter(self, function(a) return a < 1 end)
	return self
end


return M