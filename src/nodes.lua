--additional nodes
-- taken with texture from the mod "Loud Walking Mapgen" from duane
minetest.register_node("custom:air_ladder", {
	description = "Air Ladder",
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
