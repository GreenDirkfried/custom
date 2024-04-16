local S = minetest.get_translator("custom")

minetest.register_craft({
	output = 'default:mese_crystal',
	recipe = {
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
		{"default:mese_crystal_fragment", "default:mese_crystal_fragment", "default:mese_crystal_fragment"},
	},
})

if minetest.get_modpath("mesecons") then
  minetest.register_craft({
          output = 'mesecons_stickyblocks:sticky_block_all',
          recipe = {
                  {"mesecons_materials:glue", "mesecons_materials:glue", ""},
                  {"mesecons_materials:glue", "mesecons_materials:glue", ""},
                  {"", "", ""},
          },
  })
end

--armor material
if minetest.get_modpath("3d_armor") then

	minetest.register_craftitem("custom:crystal_ingot", {
		description = S("Crystal Ingot"),
		inventory_image = "ethereal_crystal_ingot.png"
	})
	minetest.register_craft({
		type = "shapeless",
		output = "custom:crystal_ingot",
		recipe = {
			"default:mese_crystal",
			"default:diamond",
		},
	})
	minetest.register_alias("ethereal:crystal_ingot","custom:crystal_ingot")

	if minetest.get_modpath("obsidianstuff") then
		if minetest.get_modpath("mobs_monster") then
			minetest.register_craftitem("custom:nether_ingot", {
				description = S("Nether Ingot"),
				inventory_image = "nether_nether_ingot.png"
			})
			minetest.register_craft({
				type = "shapeless",
				output = "custom:nether_ingot",
				recipe = {
					"obsidianstuff:ingot",
					"mobs:lava_orb",
				},
			})
			minetest.register_alias("nether:nether_ingot","custom:nether_ingot")
		end
	end

end

-- if minetest.get_modpath("nyancat") then
--   minetest.register_craft({
--   	output = 'default:mese 54',
--   	recipe = {
--   		{"", "", ""},
--   		{"", "default:nyancat", ""},
--   		{"", "", ""},
--   	},
--   })
--
--   minetest.register_craft({
--   	output = 'default:mese 9',
--   	recipe = {
--   		{"", "", ""},
--   		{"", "default:nyancat_rainbow", ""},
--   		{"", "", ""},
--   	},
--   })
--
--   minetest.register_craft({
--   	output = 'default:nyancat_rainbow',
--   	recipe = {
--   		{"default:mese", "default:mese", "default:mese"},
--   		{"default:mese", "default:mese", "default:mese"},
--   		{"default:mese", "default:mese", "default:mese"},
--   	},
--   })
--
--   minetest.register_craft({
--   	output = 'default:nyancat',
--   	recipe = {
--   		{"default:nyancat_rainbow", "default:nyancat_rainbow", "default:nyancat_rainbow"},
--   		{"default:nyancat_rainbow", "default:nyancat_rainbow", "default:nyancat_rainbow"},
--   		{"", "", ""},
--   	},
--   })
-- end

--make obsidianingots harder to craft (if obsidian is too easy to get (like when using the nether mod))
-- if minetest.get_modpath("obsidianstuff") then
--   minetest.clear_craft({output = "obsidianstuff:ingot"})
--
--   minetest.register_craft({
--           type = "shapeless",
--           output = "obsidianstuff:ingot",
--           recipe = {"default:diamond", "default:obsidian"}
--   })
-- end

-- clear nether ingot (to give it only as drops)
--minetest.clear_craft({output = "nether:nether_lump"})
