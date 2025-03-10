if minetest.get_modpath("xdecor") then
  if minetest.get_modpath("moreores") then
    xdecor.register_cut("moreores:silver_block")
  end
  if minetest.get_modpath("basic_materials") then
    xdecor.register_cut("basic_materials:brass_block")
  end
  if minetest.get_modpath("bale") then
    xdecor.register_cut("bale:bale")
  end
end
