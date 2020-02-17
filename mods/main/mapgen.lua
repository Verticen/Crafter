print("Initializing mapgen")
minetest.register_alias("mapgen_stone", "main:stone")
minetest.register_alias("mapgen_dirt", "main:dirt")
minetest.register_alias("mapgen_dirt_with_grass", "main:grass")
minetest.register_alias("mapgen_water_source", "main:waterSource")
minetest.register_alias("mapgen_sand", "main:sand")
minetest.register_alias("mapgen_tree", "main:tree")
minetest.register_alias("mapgen_leaves", "main:leaves")


print("Initializing biomes")
--[[
minetest.register_biome({
		name = "greenhills",
		node_top = " main:grass",
		depth_top = 1,
		node_filler = "main:grass",
		depth_filler = 3,
		--node_riverbed = "default:sand",
		--depth_riverbed = 2,
		--node_dungeon = "default:cobble",
		--node_dungeon_alt = "default:mossycobble",
		--node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = -31000,
		--heat_point = 50,
		--humidity_point = 35,
	})
]]--

minetest.register_biome({
		name = "grassland",
		node_top = "main:grass",
		depth_top = 1,
		node_filler = "main:dirt",
		depth_filler = 3,
		node_riverbed = "main:dirt",
		depth_riverbed = 2,
		--node_dungeon = "default:cobble",
		--node_dungeon_alt = "default:mossycobble",
		--node_dungeon_stair = "stairs:stair_cobble",
		y_max = 31000,
		y_min = 6,
		heat_point = 50,
		humidity_point = 35,
	})


minetest.register_biome({
		name = "sandDunes",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 2,
		node_riverbed = "main:sand",
		depth_riverbed = 2,
		--node_dungeon = "default:cobble",
		--node_dungeon_alt = "default:mossycobble",
		--node_dungeon_stair = "stairs:stair_cobble",
		vertical_blend = 1,
		y_max = 5,
		y_min = 4,
		heat_point = 50,
		humidity_point = 35,
	})

minetest.register_biome({
		name = "beach",
		node_top = "main:sand",
		depth_top = 1,
		node_filler = "main:sand",
		depth_filler = 3,
		node_riverbed = "main:sand",
		depth_riverbed = 2,
		node_cave_liquid = "main:waterSource",
		--node_dungeon = "main:cobble",
		--node_dungeon_alt = "default:mossycobble",
		--node_dungeon_stair = "stairs:stair_cobble",
		y_max = 3,
		y_min = -255,
		heat_point = 50,
		humidity_point = 35,
	})
	
	
print("Initializing Decorations!")

minetest.register_decoration({
		name = "main:tree",
		deco_type = "schematic",
		place_on = {"main:grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.024,
			scale = 0.015,
			spread = {x = 250, y = 250, z = 250},
			seed = 2,
			octaves = 3,
			persist = 0.66
		},
		biomes = {"grassland"},
		y_max = 31000,
		y_min = 0,
		schematic = treeSchematic,
		flags = "place_center_x, place_center_z",
		rotation = "random",
	})