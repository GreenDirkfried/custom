--additional nodes

custom = {}

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

--chat message for no drop of unbreakable nodes
custom.unbreakable_drop_msg = function(itemstack, player)
	local name = player:get_player_name()
	minetest.chat_send_player(name, S("[custom unbreakable] nodes do not drop!"))
end

--function for faster unbreakable node registration
function custom.register_unbreakable_node(name, def)
	def.drop = ""
	if def.groups then
		if not def.groups.dig_immediate then
			def.groups.unbreakable = 1
		end
		def.groups.not_in_creative_inventory = 1
	else
		def.groups = {unbreakable = 1, not_in_creative_inventory = 1}
	end
	def.on_drop = custom.unbreakable_drop_msg
	-- Prevent nodes from being exploded by TNT.
	def.on_blast = function() end
	if minetest.get_modpath("mesecons_mvps") then
		mesecon.register_mvps_stopper(name)
	end
	def.is_ground_content = false
	minetest.register_node(name, def)
end

--default nodes in unbreakable

custom.register_unbreakable_node("custom:unbreakable_obsidian", {
	description = S("Unbreakable Obsidian"),
	tiles = {"default_obsidian.png"},
	sounds = default.node_sound_stone_defaults(),
})

custom.register_unbreakable_node("custom:unbreakable_obsidian_block", {
	description = S("Unbreakable Obsidian Block"),
	tiles = {"default_obsidian_block.png"},
	sounds = default.node_sound_stone_defaults(),
})

custom.register_unbreakable_node("custom:unbreakable_ice", {
	description = S("Unbreakable Ice"),
	tiles = {"default_ice.png"},
	paramtype = "light",
	groups = {cools_lava = 1, slippery = 3},
	sounds = default.node_sound_ice_defaults(),
})
