local function on_pre_player_died(event)
	local event_json = {}
	event_json["name"] = game.get_player(event.player_index).name
	event_json["event"] = "DIED"
	event_json["reason"] = "no-cause"
	if event.cause and event.cause.type == "character" then --PvP death
		event_json["reason"] = "PVP"
		event_json["cause"] = (game.get_player(event.cause.player.index).name or "no-cause")
		log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
	elseif (event.cause) then
		event_json["reason"] = "PVE"
		event_json["cause"] =  (event.cause.name or "no-cause")
		log("[" .. event_json["event"] .. "] " .. event_json["reason"] .. ":" .. event_json["name"] .. " " .. event_json["cause"])
	else
		event_json["reason"] = "ambient damage"
		log("[" .. event_json["event"] .. "] " .. event_json["reason"] .. event_json["name"] .. " - " .. event_json["reason"]) --event.g. poison damage
	end
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
end

local function on_post_entity_died(event)
	local event_json = {}
	event_json["name"] = event.name
	event_json["event"] = "POST_DESTROYED"
	event_json["event_name"] = event.name
	event_json["damage_type"] = event.damage_type.name
	if event.quality then
		event_json["quality"] = {}
		event_json["quality"]["name"] = event.quality.name
		event_json["quality"]["type"] = event.quality.type
		event_json["quality"]["color"] = event.quality.color
		event_json["quality"]["level"] = event.quality.level
	end
	if event.force then
		event_json["force"] = {}
		event_json["force"]["name"] = event.force.name
	else
		event_json["force"] = {}
		event_json["force"]["name"] = "none"
	end
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. "Event Name: " .. event_json["name"] .. " - " .. "Force Name: " .. event_json["force"]["name"]) --event.g. poison damage
end

local function on_entity_died(event)
	local event_json = {}
	event_json["name"] = event.name
	event_json["event"] = "DESTROYED"
	event_json["damage_type"] = event.damage_type.name
	if event.entity then
		event_json["entity"] = {}
		event_json["entity"]["name"] = event.entity.name
		event_json["entity"]["type"] = event.entity.type
		event_json["entity"]["force"] = event.entity.force.name
		event_json["entity"]["position"] = event.entity.position
	end
	if event.force then
		event_json["force"] = {}
		event_json["force"]["name"] = event.force.name
	else
		event_json["force"] = {}
		event_json["force"]["name"] = "none"
		event_json["force"]["reason"] = "ambient damage"
	end
	if event.cause then
		event_json["cause"] = {}
		event_json["cause"]["reason"] = "Combat"
		event_json["cause"]["name"] =  (event.cause.name or "no-cause")
		event_json["cause"]["type"] = event.cause.type
		event_json["cause"]["force"] = event.force.name
	else
		event_json["cause"] = {}
		event_json["cause"]["reason"] = "ambient damage"
	end
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. "Event Name: " .. event_json["name"] .. " - " .. ("Cause Reason: " .. event_json["cause"]["reason"] or "")) --event.g. poison damage
end

local function on_player_left_game(event)
	local event_json = {}
	event_json["name"] = game.get_player(event.player_index).name
	event_json["event"] = "LEAVE"
	if event.reason == defines.disconnect_reason.quit then
		event_json["reason"] = "quit"
	elseif event.reason == defines.disconnect_reason.dropped then
		event_json["reason"] = "dropped"
	elseif event.reason == defines.disconnect_reason.reconnect then
		event_json["reason"] = "reconnect"
	elseif event.reason == defines.disconnect_reason.wrong_input then
		event_json["reason"] = "wrong_input"
	elseif event.reason == defines.disconnect_reason.desync_limit_reached then
		event_json["reason"] = "desync_limit_reached"
	elseif event.reason == defines.disconnect_reason.cannot_keep_up then
		event_json["reason"] = "cannot_keep_up"
	elseif event.reason == defines.disconnect_reason.afk then
		event_json["reason"] = "afk"
	elseif event.reason == defines.disconnect_reason.kicked then
		event_json["reason"] = "kicked"
	elseif event.reason == defines.disconnect_reason.kicked_and_deleted then
		event_json["reason"] = "kicked_and_deleted"
	elseif event.reason == defines.disconnect_reason.banned then
		event_json["reason"] = "banned"
	elseif event.reason == defines.disconnect_reason.switching_servers then
		event_json["reason"] = "switching_servers"
	else
		event_json["reason"] = "other"
	end
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
end


local function on_player_joined_game(event)
	local event_json = {}
	event_json["name"] = game.get_player(event.player_index).name
	event_json["event"] = "JOIN"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"])
end


local function on_player_banned(event)
	local event_json = {}
	event_json["name"] = event.player_name
	event_json["event"] = "BANNED"
	event_json["reason"] = event.reason
	event_json["admin"] = event.by_player
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"])
end


local function on_player_unbanned(event)
	local event_json = {}
	event_json["name"] = event.player_name
	event_json["event"] = "BANNED"
	event_json["reason"] = event.reason
	event_json["admin"] = event.by_player
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. "by " .. event_json["admin"] .. "for " .. event_json["reason"])
end


local function on_achievement_gained(event)
	local event_json = {}
	event_json["name"] = game.get_player(event.player_index)
	event_json["event"] = "ACHIEVEMENT_GAINED"
	event_json["achievement_name"] = event.achievement.name
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. "by " .. event_json["admin"])
end


local function get_infinite_research_name(name)
	-- gets the name of infinite research (without numbers)
  	return string.match(name, "^(.-)%-%d+$") or name
end


local function on_research_started(event)
	local event_json = {}
	event_json["name"] = get_infinite_research_name(event.research.name)
	event_json["event"] = "RESEARCH_STARTED"
	event_json["level"] = (event.research.level or "no-level")
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["level"])
end


local function on_research_finished(event)
	local event_json = {}
	event_json["name"] = get_infinite_research_name(event.research.name)
	event_json["event"] = "RESEARCH_FINISHED"
	event_json["level"] = (event.research.level or "no-level")
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[RESEARCH FINISHED] " .. event_json["name"] .. " " .. event_json["level"])
end


local function on_research_cancelled(event)
	local event_json = {}
	event_json["event"] = "RESEARCH_CANCELLED"
	event_json["tick"] = event.tick
	for k, v in pairs(event.research) do
		event_json["name"] = get_infinite_research_name(k)
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. event_json["name"])
	end
end


local function on_console_chat(event)
	local event_json = {}
	event_json["event"] = "CHAT"
	event_json["tick"] = event.tick
	if ( event.player_index ~= nul and event.player_index ~= '' ) then
		local player = game.get_player(event.player_index)
		event_json["name"] = player.name
		event_json["message"] = event.message
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. event_json["name"] .. ": " .. event_json["message"])
	else
		event_json["name"] = "Console"
		event_json["message"] = event.message
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. event_json["name"] .. ": " .. event_json["message"])
	end
end


local function on_built_entity(event)
	-- get the corresponding data
	local player = game.get_player(event.player_index)
	local data = storage.playerstats[player.name]
	if data == nil then
		-- format of array: {entities placed, ticks played}
		storage.playerstats[player.name] = {1, 0}
	else
		data[1] = data[1] + 1 --indexes start with 1 in lua
		storage.playerstats[player.name] = data
	end

	local event_json = {}
	event_json["name"] = event.name
	event_json["tick"] = event.tick
	event_json["player_name"] = player.name
	event_json["event"] = "BUILT_ENTITY"
	if event.entity then
		event_json["entity"] = {}
		event_json["entity"]["name"] = event.entity.type
	end
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["entity"]["name"])
end


local function on_init ()
	storage.playerstats = {}
end


local function log_stats()
	local event_json = {}
	event_json["event"] = "STATS"
	-- log built entities and playtime of players
	for _, p in pairs(game.players)
	do
		event_json["name"] = p.name
		event_json["event"] = "STATS"
		event_json["stats"] = {
			["online_time"] = p.online_time,
			[pdat[1]] = (p.online_time - pdat[2])
		}
		local pdat = storage.playerstats[event_json["name"]]
		if (pdat == nil) then
			-- format of array: {entities placed, ticks played}
			event_json["stats"]["online_time"] = p.online_time
			helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
			log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. 0 .. " " .. event_json["stats"]["online_time"])
			storage.playerstats[event_json["name"]] = {0, event_json["stats"]["online_time"]}
		else
			if (pdat[1] ~= 0 or (p.online_time - pdat[2]) ~= 0) then
				event_json["stats"][pdat[1]] = (p.online_time - pdat[2])
				helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
				log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. pdat[1] .. " " .. event_json["stats"][pdat[1]])
			end
			-- update the data
			storage.playerstats[event_json["name"]] = {0, p.online_time}
		end
	end
end


local function log_tick_over_time()
	local event_json = {}
	event_json["event"] = "TICK"
	event_json["current_map_Tick"] = game.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["tick"])
end


local function on_rocket_launched(event)
	local event_json = {}
	event_json["event"] = "ROCKET"
	event_json["reason"] = "ROCKET_LAUNCHED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function checkEvolution()
	local event_json = {}
	event_json["name"] = "evolution_factor"
	event_json["event"] = "EVOLUTION"
	for surface, details in pairs(game.surfaces) do
		event_json["stats"] = {
			["factor"] = game.forces["enemy"].get_evolution_factor(surface),
			["surface"] = surface
		}
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. string.format("Surface: %s Factor: %.4f", event_json["stats"]["surface"], event_json["stats"]["factor"]))
	end
end


local function on_trigger_fired_artillery(event)
	local event_json = {}
	event_json["name"] = event.entity.name
	event_json["event"] = "ARTILLERY"
	event_json["tick"] = event.tick
	event_json["message"] = (event.source.name or "no source")
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. event_json["message"])
end


local function on_character_corpse_expired(event)
	local event_json = {}
	event_json["name"] = event.entity.name
	event_json["corpse_name"] = event.corpse.name
	event_json["event"] = "CORPSE_EXPIRED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. event_json["corpse_name"])
end


local function on_picked_up_item(event)
	local event_json = {}
	event_json["player_name"] = game.get_player(event.player_index).name
	event_json["item_name"] = event.item_stack.name
	event_json["item_count"] = event.item_stack.count
	event_json["name"] = event.name
	event_json["event"] = "ITEM_PICKED_UP"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. event_json["item_name"])
end


local function on_player_repaired_entity(event)
	local event_json = {}
	event_json["player_name"] = game.get_player(event.player_index).name
	event_json["name"] = event.name
	event_json["event"] = "ENTITY_REPAIRED"
	event_json["tick"] = event.tick
	if event.entity then
		event_json["entity"] = {}
		event_json["entity"]["name"] = event.entity.name
		event_json["entity"]["type"] = event.entity.type
	end
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. event_json["entity"]["name"])
end


local logging = {}
logging.events = {
	[defines.events.on_rocket_launched] = on_rocket_launched,
	[defines.events.on_research_started] = on_research_started,
	[defines.events.on_research_finished] = on_research_finished,
	[defines.events.on_research_cancelled] = on_research_cancelled,
	[defines.events.on_player_joined_game] = on_player_joined_game,
	[defines.events.on_player_left_game] = on_player_left_game,
	[defines.events.on_pre_player_died] = on_pre_player_died,
	[defines.events.on_built_entity] = on_built_entity,
	[defines.events.on_trigger_fired_artillery] = on_trigger_fired_artillery,
	[defines.events.on_console_chat] = on_console_chat,
	[defines.events.on_post_entity_died] = on_post_entity_died,
	[defines.events.on_player_banned] = on_player_banned,
	[defines.events.on_player_unbanned] = on_player_unbanned,
	[defines.events.on_achievement_gained] = on_achievement_gained,
	[defines.events.on_character_corpse_expired] = on_character_corpse_expired,
	[defines.events.on_picked_up_item] = on_picked_up_item,
	[defines.events.on_player_repaired_entity] = on_player_repaired_entity,
	[defines.events.on_entity_died] = on_entity_died,
}

logging.on_nth_tick = {
	[60*60*10] = function() -- every 10 minutes
		log_stats()
	end,
	[60*60*10] = checkEvolution,
	[60*60] = log_tick_over_time,
}

logging.on_init = on_init

return logging
