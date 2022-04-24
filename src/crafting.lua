--additional recipes and recipe changes
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
