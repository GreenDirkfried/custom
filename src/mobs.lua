-- add and adjust drops
if minetest.get_modpath("mobs_monster") then

	local def = minetest.registered_entities["mobs_monster:dirt_monster"]
	def.drops = {
		{name = "default:dirt", chance = 1, min = 0, max = 2},
		{name = "default:stone_with_coal", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:sand_monster"]
	def.drops = {
		{name = "default:desert_sand", chance = 1, min = 3, max = 5},
		{name = "default:stone_with_copper", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:stone_monster"]
	def.drops = {
		{name = "default:cobble", chance = 1, min = 0, max = 2},
		{name = "default:coal_lump", chance = 3, min = 0, max = 2},
		{name = "default:iron_lump", chance = 5, min = 0, max = 2},
		{name = "default:stone_with_iron", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:tree_monster"]
	def.drops = {
		{name = "default:stick", chance = 1, min = 0, max = 2},
		{name = "default:sapling", chance = 2, min = 0, max = 2},
		{name = "default:junglesapling", chance = 3, min = 0, max = 2},
		{name = "default:apple", chance = 4, min = 1, max = 2},
		{name = "default:stone_with_tin", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:mese_monster"]
	def.drops = {
		{name = "default:mese_crystal", chance = 9, min = 0, max = 2},
		{name = "default:mese_crystal_fragment", chance = 1, min = 0, max = 2},
		{name = "default:stone_with_mese", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:oerkki"]
	def.drops = {
		{name = "default:obsidian", chance = 3, min = 0, max = 2},
		{name = "default:gold_lump", chance = 2, min = 0, max = 2},
		{name = "default:stone_with_gold", chance = 10, min = 1, max = 1},
	}

	local def = minetest.registered_entities["mobs_monster:dungeon_master"]
	def.drops = {
		{name = "default:mese_crystal_fragment", chance = 1, min = 0, max = 2},
		{name = "mobs:leather", chance = 2, min = 0, max = 2},
		{name = "default:mese_crystal", chance = 3, min = 0, max = 2},
		{name = "default:diamond", chance = 4, min = 0, max = 1},
		{name = "default:diamondblock", chance = 30, min = 0, max = 1},
		{name = "default:stone_with_diamond", chance = 1, min = 1, max = 1},
	}

-- Land Guard with different types from https://codeberg.org/tenplus1/mobs_monster

	local guard_types = {

	{	nodes = {
			"default:snow", "default:snowblock", "default:ice",
			"default:dirt_with_snow"
		},
		skins = {"mobs_land_guard6.png", "mobs_land_guard7.png", "mobs_land_guard8.png"},
		drops = {
			{name = "default:ice", chance = 1, min = 1, max = 4},
			{name = "mobs:leather", chance = 2, min = 0, max = 2},
			{name = "default:diamond", chance = 4, min = 0, max = 2},
			{name = "custom:stone_with_crystal", chance = 10, min = 1, max = 1},
		},
	},

	{	nodes = {
			"ethereal:dry_dirt", "default:sand", "default:desert_sand",
			"default:dry_dirt_with_dry_grass", "default:dry_dirt"
		},
		skins = {"mobs_land_guard4.png", "mobs_land_guard5.png"},
		drops = {
			{name = "default:sandstone", chance = 1, min = 1, max = 4},
			{name = "mobs:leather", chance = 2, min = 0, max = 2},
			{name = "default:mese_crystal", chance = 4, min = 0, max = 2},
			{name = "custom:stone_with_crystal", chance = 10, min = 1, max = 1},
		},
	}
}
	local def = minetest.registered_entities["mobs_monster:land_guard"]
	def.drops = {
		{name = "mobs:leather", chance = 4, min = 0, max = 2},
		{name = "default:mese_crystal", chance = 6, min = 0, max = 2},
		{name = "default:diamond", chance = 8, min = 0, max = 1},
		{name = "custom:stone_with_crystal", chance = 10, min = 1, max = 1},
	}
	def.on_spawn = function(self)

		local pos = self.object:get_pos() ; pos.y = pos.y - 1
		local tmp

		for n = 1, #guard_types do

			tmp = guard_types[n]

			if minetest.find_node_near(pos, 1, tmp.nodes) then

				self.base_texture = { tmp.skins[math.random(#tmp.skins)] }
				self.object:set_properties({textures = self.base_texture})
				self.docile_by_day = tmp.docile

				if tmp.drops then self.drops = tmp.drops end

				return true
			end
		end

		return true -- run only once, false/nil runs every activation
	end


	-- local def = minetest.registered_entities["mobs_monster:lava_flan"]
	-- def.drops = {
	-- 	{name = "mobs:lava_orb", chance = 15, min = 1, max = 1},
	-- }
if minetest.get_modpath("moreores") then

	-- Spider with different types from https://codeberg.org/tenplus1/mobs_monster

		local spider_types = {
			{	nodes = {"default:snow", "default:snowblock", "default:dirt_with_snow"},
				skins = {"mobs_spider_snowy.png"},
				docile = true,
				drops = {{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1}},
			},

			{	nodes = {"default:dirt_with_rainforest_litter", "default:jungletree"},
				skins = {"mobs_spider_orange.png"},
				docile = true,
				drops = nil,
				shoot = true
			},

			{	nodes = {"default:stone", "default:gravel"},
				skins = {"mobs_spider_grey.png"},
				docile = nil,
				drops = {{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1}},
				small = true
			},

			{	nodes = {"default:mese", "default:stone_with_mese"},
				skins = {"mobs_spider_mese.png"},
				docile = nil,
				drops = {
					{name = "farming:string", chance = 1, min = 0, max = 2},
					{name = "default:mese_crystal_fragment", chance = 2, min = 1, max = 4},
					{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1}}
			},

			{	nodes = {"custom:crystal_dirt", "custom:crystal_spike"},
				skins = {"mobs_spider_crystal.png"},
				docile = true, immune_to = {{"custom:crystal_spike", 0}},
				drops = {
					{name = "farming:string", chance = 1, min = 0, max = 2},
					{name = "custom:crystal_spike", chance = 15, min = 1, max = 2},
					{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1}}
			}
		}

		local def = minetest.registered_entities["mobs_monster:spider"]
		def.drops = {
			{name = "farming:string", chance = 1, min = 0, max = 2},
			{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1},
		}
-- check surrounding nodes and spawn a specific spider
	def.on_spawn = function(self)
		local pos = self.object:get_pos() ; pos.y = pos.y - 1
		local tmp

		for n = 1, #spider_types do

			tmp = spider_types[n]

			if minetest.find_node_near(pos, 1, tmp.nodes) then

				self.base_texture = tmp.skins
				self.object:set_properties({textures = tmp.skins})
				self.docile_by_day = tmp.docile

				if tmp.drops then self.drops = tmp.drops end

				if tmp.immune_to then self.immune_to = tmp.immune_to end

				if tmp.shoot then
					self.attack_type = "dogshoot"
					self.arrow = "mobs_monster:cobweb"
					self.dogshoot_switch = 1
					self.dogshoot_count_max = 60
					self.dogshoot_count2_max = 20
					self.shoot_interval = 2
					self.shoot_offset = 2
				end

				if tmp.small then

					self.object:set_properties({
						collisionbox = {-0.2, -0.2, -0.2, 0.2, 0, 0.2},
						visual_size = {x = 0.25, y = 0.25}
					})
				end

				return true
			end
		end
		return true -- run only once, false/nil runs every activation
	end

		local def = minetest.registered_entities["mobs_monster:obsidian_flan"]
		def.drops = {
			{name = "default:obsidian_shard", chance = 1, min = 1, max = 5},
			{name = "default:obsidian", chance = 3, min = 0, max = 2},
			{name = "moreores:mineral_mithril", chance = 10, min = 1, max = 1},
		}

end

end

local sword_drops = {
	{name = "default:sword_steel", chance = 5, min = 1, max = 1},
	{name = "custom:stone_with_nether", chance = 15, min = 1, max = 2}
}
local archer_drops = {
	{name = "default:stick", chance = 5, min = 1, max = 1},
	{name = "custom:stone_with_nether", chance = 20, min = 1, max = 1}
}
local archer_dark_drops = {
	{name = "default:stick", chance = 5, min = 1, max = 1},
	{name = "custom:stone_with_nether", chance = 15, min = 1, max = 1}
}

if minetest.get_modpath("bonemeal") then
	table.insert(sword_drops, {name = "bonemeal:bone", chance = 3, min = 1, max = 2})
	table.insert(archer_drops, {name = "bonemeal:bone", chance = 3, min = 1, max = 2})
	table.insert(archer_dark_drops, {name = "bonemeal:bone", chance = 3, min = 1, max = 2})
end

if minetest.get_modpath("wool") then
	table.insert(archer_dark_drops, {name = "wool:dark_grey", chance = 3, min = 1, max = 2})
end

if minetest.get_modpath("farming") then
	table.insert(archer_drops, {name = "farming:string", chance = 3, min = 1, max = 2})
	table.insert(archer_dark_drops, {name = "farming:string", chance = 3, min = 1, max = 2})
end

if minetest.get_modpath("mobs_skeletons") then
	local def = minetest.registered_entities["mobs_skeletons:skeleton"]
	def.drops = sword_drops

	local def = minetest.registered_entities["mobs_skeletons:skeleton_archer"]
	def.drops = archer_drops

	local def = minetest.registered_entities["mobs_skeletons:skeleton_archer_dark"]
	def.drops = archer_dark_drops
end
