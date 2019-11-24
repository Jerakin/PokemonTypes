# pTypes

Pokemon Types is a lua module to figure out what move type a Pokemon of a given type pair
is weak and strong against.

### Installation
You can use pTypes in your own project by adding this project as a [Defold library dependency](http://www.defold.com/manuals/libraries/). Open your game.project file and in the dependencies field under project add:
  
	https://github.com/Jerakin/PokemonTypes/archive/master.zip


### Usage

```lua
-- Require the module
local ptypes = require "ptypes.main"

local pokemon

-- Creates a "model" of a Normal type pokemon.
pokemon = ptype.Model("Normal")

-- You can create a model of dual type Pokemon too.
pokemon = ptype.Model("Ghost", "Electric")

-- If you prefer you can use the enum.
pokemon = ptype.Model(ptype.Fairy)

-- After the model is constructed you can find out which resitances it have by looking
-- at the corresponding table.
pprint(pokemon.vulnerabilities)
pprint(pokemon.resistances)
pprint(pokemon.immunities)

```