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

--crystal spike from https://codeberg.org/tenplus1/ethereal
minetest.register_node("custom:crystal_spike", {
	description = S("Crystal Spike"),
	drawtype = "plantlike",
	tiles = {"ethereal_crystal_spike.png"},
	inventory_image = "ethereal_crystal_spike.png",
	wield_image = "ethereal_crystal_spike.png",
	paramtype = "light",
	light_source = 7,
	sunlight_propagates = true,
	walkable = true,
	damage_per_second = 1,
	groups = {cracky = 1, falling_node = 1, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0, 5 / 16}
	},
	node_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0, 5 / 16}
	}
})

minetest.register_alias("ethereal:crystal_spike","custom:crystal_spike")

minetest.register_node("custom:stone_with_crystal", {
	description = S("Crystal Ore"),
	tiles = {"default_stone.png^custom_mineral_crystal.png"},
	groups = {cracky = 1},
	drop = "custom:crystal_spike",
	sounds = default.node_sound_stone_defaults(),
	--light_source = 3,
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

custom.register_unbreakable_node("custom:unbreakable_glass", {
	description = S("Unbreakable Glass"),
	drawtype = "glasslike_framed_optional",
	tiles = {"default_glass.png", "default_glass_detail.png"},
	use_texture_alpha = "clip", -- only needed for stairs API
	paramtype = "light",
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
})

custom.register_unbreakable_node("custom:unbreakable_obsidian_glass", {
	description = S("Obsidian Glass"),
	drawtype = "glasslike_framed_optional",
	tiles = {"default_obsidian_glass.png", "default_obsidian_glass_detail.png"},
	use_texture_alpha = "clip", -- only needed for stairs API
	paramtype = "light",
	sunlight_propagates = true,
	sounds = default.node_sound_glass_defaults(),
})
