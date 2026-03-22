-- map generation

custom = {}

local S = minetest.get_translator("custom")

minetest.register_ore({
		ore_type       = "scatter",
		ore            = "custom:stone_with_crystal",
		wherein        = "default:stone",
		clust_scarcity = 71 * 71 * 71,
		clust_num_ores = 1,
		clust_size     = 3,
		y_max          = -1024,
		y_min          = -2047,
	})

	minetest.register_ore({
		ore_type       = "scatter",
		ore            = "custom:stone_with_crystal",
		wherein        = "default:stone",
		clust_scarcity = 59 * 59 * 59,
		clust_num_ores = 2,
		clust_size     = 3,
		y_max          = -2048,
		y_min          = -31000,
	})

	minetest.register_ore({
			ore_type       = "scatter",
			ore            = "custom:stone_with_nether",
			wherein        = "default:stone",
			clust_scarcity = 89 * 89 * 89,
			clust_num_ores = 1,
			clust_size     = 5,
			y_max          = -2048,
			y_min          = -4095,
		})

		minetest.register_ore({
			ore_type       = "scatter",
			ore            = "custom:stone_with_nether",
			wherein        = "default:stone",
			clust_scarcity = 71 * 71 * 71,
			clust_num_ores = 2,
			clust_size     = 5,
			y_max          = -4096,
			y_min          = -31000,
		})
