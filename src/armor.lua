if minetest.get_modpath("3d_armor") then

--enhance mithril armor
  if minetest.get_modpath("armor_mithril") then
    minetest.override_item("3d_armor:helmet_mithril", {
        groups = {armor_head=1, armor_heal=14, armor_use=66},
        armor_groups = {fleshy=17},
        damage_groups = {cracky=2, snappy=1, level=3},
    })

    minetest.override_item("3d_armor:chestplate_mithril", {
        groups = {armor_torso=1, armor_heal=14, armor_use=66},
        armor_groups = {fleshy=22},
        damage_groups = {cracky=2, snappy=1, level=3},
    })

    minetest.override_item("3d_armor:leggings_mithril", {
        groups = {armor_legs=1, armor_heal=14, armor_use=66},
        armor_groups = {fleshy=22},
        damage_groups = {cracky=2, snappy=1, level=3},
    })

    minetest.override_item("3d_armor:boots_mithril", {
        groups = {armor_feet=1, armor_heal=14, armor_use=66},
        armor_groups = {fleshy=17},
        damage_groups = {cracky=2, snappy=1, level=3},
    })

    minetest.override_item("shields:shield_mithril", {
        groups = {armor_shield=1, armor_heal=14, armor_use=66},
        armor_groups = {fleshy=17},
        damage_groups = {cracky=2, snappy=1, level=3},
    })
  end

--enhance obsidian armor
  if minetest.get_modpath("obsidianstuff") then
    minetest.override_item("obsidianstuff:helmet", {
        groups = {armor_head=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })

    minetest.override_item("obsidianstuff:chestplate", {
        groups = {armor_torso=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })

    minetest.override_item("obsidianstuff:leggings", {
        groups = {armor_legs=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=21},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })

    minetest.override_item("obsidianstuff:boots", {
        groups = {armor_feet=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })

    minetest.override_item("obsidianstuff:shield", {
        groups = {armor_shield=1, armor_heal=13, armor_use=200},
        armor_groups = {fleshy=16},
        damage_groups = {cracky=2, snappy=1, choppy=1, level=3},
    })
  end

end
