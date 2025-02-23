--additional nodes

local S = minetest.get_translator("custom")

-- taken with texture from the mod "Loud Walking Mapgen" from duane
minetest.register_node("custom:air_ladder", {
	description = S("Air Ladder"),
	inventory_image = "loud_walking_air_ladder.png",
	drawtype = "airlike",
	--tiles = {"loud_walking_air_ladder.png"},
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	use_texture_alpha = true,
	climbable = true,
	is_ground_content = false,
	selection_box = {
		type = "fixed",
		fixed = {0, 0, 0, 0, 0, 0},
	},
})

minetest.register_node("custom:stone_with_nether", {
	description = S("Nether Ore"),
	tiles = {"default_stone.png^custom_mineral_nether.png"},
	groups = {cracky = 2, level = 2},
	drop = "custom:nether_lump",
	sounds = default.node_sound_stone_defaults(),
})
