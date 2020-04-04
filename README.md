# ALPHA STATE CHANGELOG
## 0.01
- make a grass biome
- make trees
- make hand - mod another mod
- make items drop
- make tools
- make trees drop stuff with shears
- add treecapitator
- itemstack max 1000
- ores
- vignette
- furnace
- add signs with vanessae's sign library
- crafting recipes
- beds - set respawn point - only sleep at night
- make treecapitator cut down whole tree if using axe - make trees drop items on treecapitator
- tnt
- sand fall down
- tnt throw player - and items
- water flow faster
- torches with particle
- make a mob

## 0.02
- fix tools causing crash on pigs with no fleshy definition
- ladders - only placeable on walls
- eating animation - particles? - entity?
- boats
- make falling item have fall soundspec
- rebalance sand audio
- rewrite the item collection better
- (not finished) redstone, make nodes drop multiple items individually
- make item collection move with the player's speed
- made saplings


## 0.03
- make grass spread
- water buckets
- buckets water farmland
- pickaxe required to mine stone based nodes
- Crafting bench
- Farming with hoes, grass drops seeds, bread, etc
- simplify mobs ai
- running out of a node when placing tries to replace it with another of the same item in inventory
- crafting bench
- add in default furnace
- add backgrounds to all gui elements
- make furnaces drop all items on destroy instead of not allowing you to mine them
- added glass - smelt sand
- added boat 
- rightclicking with tool places torch
- add chest
- make chest drop all items when you mine them
- add in redstone:
- torch, repeater, comparator, inverter, piston, player detector,light,
- redstone ore - drops 4,5 redstone dust, turns on when punched
- pressure plate, detects players (output max), detects items (output based on number of items)
- fix item size based on number of items in stack to fixed size
- add hoppers
- Add TooManyItems
- add function to check which nodes drop the item
- fix hoppers not activating furnace
- make pigs head turn smoothly
- Add in fences, walls, windows
- Overhaul doors
- Add credits screen
- Add stairs
- Add slabs
- 2 Music tracks (day and morning)
- Add snow
- Fix bed placement


# IDEAS:
- ghost mob (sync with the cave sounds) and possible cave ins during cave sounds
- rope and tnt arrows
- xp (edit the node drops code to check if node has tag for xp)
- brewing
- enchanting/upgrading
- magic (wands, spells, etc)
- mechanics (compressor, autominer)
- automation (pipes, pumps, fluid  transfer)
- vehicles (car, powered minecarts, trains)
- hitscan flintlocks
- make mob look around
- make hostile mobs
- make mob have nametags for debug
- make mobs pathfind
- upgrade minecart physics even more 


farming - 
- add fertilizer (pig drops bone randomly) 
- fertilizer is made out of bone - 
- fertilizer can make tall grass grow on regular grass
- bread - 3 bread in a row
- make sandwich with bread and cooked porkchop
- fertilizer used on saplings randomly make tree grow (make sapling growth a function)

- make torches abm that checks if player in area
- make furnace abm that checks if player in area


- fishing
- bows
- fix full inventory collection deletion bug
- 3d character
- make tnt hurt player
- rewrite minecart - halfway - make go up and down hills
- right click with tool places torch
- if placed last node put another stack into hand
- have falling node hurt player?
- add a function to set a velocity goal to entities and then implement it with all entities
- ^make a value if below then stop?
- colored chat messages
- check if everyone is in bed before going to next night
- also lock player in bed until they get out or daytime
- create a function to check if a node or group is below

- cars buildable in crafting table
- require gas pumps refine oil
- drive next to gas pump and car will fill with gas
- maybe have pump be rightclickable and then manually fill with gass using nozel


- minecart car train? - off rail use
- automatic step height for off rail use
- make cars follow each other
- oil which spawns underground in pools
- powered minecart car (engine car)
- chest minecart car
- player controls engine car
make entities push against players


open bugs:
- ghost chest bug
fix torches not deleting particles when mounted node dug <- meta glitch?
- fixing with abm



possible applications:
causes object to magnetize towards player or other objects and stop after an inner radius
use for better item magnet?

if object:is_player() and object:get_player_name() ~= self.rider then
      local player_pos = object:getpos()
      pos.y = 0
      player_pos.y = 0
      
      local currentvel = self.object:getvelocity()
      local vel = vector.subtract(pos, player_pos)
      vel = vector.normalize(vel)
      local distance = vector.distance(pos,player_pos)
      distance = (1-distance)*10
      vel = vector.multiply(vel,distance)
      local acceleration = vector.new(vel.x-currentvel.x,0,vel.z-currentvel.z)
      
      
      if self.axis == "x"      then
            self.object:add_velocity(vector.new(acceleration.x,0,0))
      elseif self.axis == "z" then
            self.object:add_velocity(vector.new(0,0,acceleration.z))
      else
            self.object:add_velocity(acceleration)
      end
      
      - acceleration = vector.multiply(acceleration, -1)
      - object:add_player_velocity(acceleration)
end
