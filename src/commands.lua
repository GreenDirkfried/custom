if minetest.setting_get("static_spawnpoint") then
	command = {}
	minetest.register_chatcommand("spawn", {
		params = "<player>",
		description = "Teleports you to the Spawnpoint",
		func = function(name, param)
	        	local player = minetest.env:get_player_by_name(name)
	        	local spawnPoint = minetest.setting_get("static_spawnpoint")
			    minetest.get_player_by_name(name):setpos(minetest.string_to_pos(spawnPoint))
	        	minetest.chat_send_player(name, "Willkommen am Spawn - von hier kannst du anfangen die Welt zu erkunden!")
		end,
	})
end
