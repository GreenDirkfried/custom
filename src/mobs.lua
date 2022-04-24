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
		{name = "default:stone_with_diamond", chance = 10, min = 1, max = 1},
	}

	-- local def = minetest.registered_entities["mobs_monster:lava_flan"]
	-- def.drops = {
	-- 	{name = "mobs:lava_orb", chance = 15, min = 1, max = 1},
	-- }
if minetest.get_modpath("moreores") then

	--note: the spider has different types with different drops (problems? overwritten?)
		local def = minetest.registered_entities["mobs_monster:spider"]
		def.drops = {
			{name = "farming:string", chance = 1, min = 0, max = 2},
			{name = "moreores:mineral_silver", chance = 10, min = 1, max = 1},
		}

		local def = minetest.registered_entities["mobs_monster:obsidian_flan"]
		def.drops = {
			{name = "default:obsidian_shard", chance = 1, min = 1, max = 5},
			{name = "default:obsidian", chance = 3, min = 0, max = 2},
			{name = "moreores:mineral_mithril", chance = 10, min = 1, max = 1},
		}

end

end
