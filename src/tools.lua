if minetest.get_modpath("obsidianstuff") then
	--enhance obsidian tools
	
	minetest.override_item("obsidianstuff:sword", {
		tool_capabilities = {
			full_punch_interval = 0.6,
			max_drop_level=1,
			groupcaps={
				snappy={times={[1]=1.80, [2]=0.80, [3]=0.25}, uses=50, maxlevel=3},
			},
			damage_groups = {fleshy=9},
		},
	})

	minetest.override_item("obsidianstuff:pick", {
		tool_capabilities = {
			full_punch_interval = 0.8,
			max_drop_level=3,
			groupcaps={
	            cracky = {times = {[1] = 1.9, [2] = 0.9, [3] = 0.45}, uses = 40, maxlevel= 3}
			},
			damage_groups = {fleshy=6},
		},
	})

	minetest.override_item("obsidianstuff:shovel", {
		tool_capabilities = {
			full_punch_interval = 0.9,
			max_drop_level=1,
			groupcaps={
				crumbly = {times={[1]=1.0, [2]=0.4, [3]=0.25}, uses=40, maxlevel=3},
			},
			damage_groups = {fleshy=5},
		},
	})

	minetest.override_item("obsidianstuff:axe", {
		tool_capabilities = {
			full_punch_interval = 0.8,
			max_drop_level=1,
			groupcaps={
				choppy={times={[1]=2.0, [2]=0.80, [3]=0.45}, uses=40, maxlevel=3},
			},
			damage_groups = {fleshy=8},
		},
	})
end
