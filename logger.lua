local function on_pre_player_died (e)
	local event_json = {}
	event_json["name"] = game.get_player(e.player_index).name
	event_json["event"] = "DIED"
	event_json["reason"] = "no-cause"
	if e.cause and e.cause.type == "character" then --PvP death
		event_json["reason"] = "PVP"
		event_json["cause"] = (game.get_player(e.cause.player.index).name or "no-cause")
		log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
	elseif (e.cause) then
		event_json["reason"] = "PVE"
		event_json["cause"] =  (e.cause.name or "no-cause")
		log("[" .. event_json["event"] .. "] " .. event_json["reason"] .. ":" .. event_json["name"] .. " " .. event_json["cause"])
	else
		event_json["reason"] = "ambient damage"
		log("[" .. event_json["event"] .. "] " .. event_json["reason"] .. event_json["name"] .. " - " .. event_json["reason"]) --e.g. poison damage
	end
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
end

local function on_player_left_game(e)
	local event_json = {}
	event_json["name"] = game.get_player(e.player_index).name
	event_json["event"] = "LEAVE"
	if e.reason == defines.disconnect_reason.quit then
		event_json["reason"] = "quit"
	elseif e.reason == defines.disconnect_reason.dropped then
		event_json["reason"] = "dropped"
	elseif e.reason == defines.disconnect_reason.reconnect then
		event_json["reason"] = "reconnect"
	elseif e.reason == defines.disconnect_reason.wrong_input then
		event_json["reason"] = "wrong_input"
	elseif e.reason == defines.disconnect_reason.desync_limit_reached then
		event_json["reason"] = "desync_limit_reached"
	elseif e.reason == defines.disconnect_reason.cannot_keep_up then
		event_json["reason"] = "cannot_keep_up"
	elseif e.reason == defines.disconnect_reason.afk then
		event_json["reason"] = "afk"
	elseif e.reason == defines.disconnect_reason.kicked then
		event_json["reason"] = "kicked"
	elseif e.reason == defines.disconnect_reason.kicked_and_deleted then
		event_json["reason"] = "kicked_and_deleted"
	elseif e.reason == defines.disconnect_reason.banned then
		event_json["reason"] = "banned"
	elseif e.reason == defines.disconnect_reason.switching_servers then
		event_json["reason"] = "switching_servers"
	else
		event_json["reason"] = "other"
	end
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["reason"])
end

local function on_player_joined_game(e)
	local event_json = {}
	event_json["name"] = game.get_player(e.player_index).name
	event_json["event"] = "JOIN"
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"])
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
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. " " .. event_json["level"])
end

local function on_research_finished(event)
	local event_json = {}
	event_json["name"] = get_infinite_research_name(event.research.name)
	event_json["event"] = "RESEARCH_FINISHED"
	event_json["level"] = (event.research.level or "no-level")
	log("[RESEARCH FINISHED] " .. event_json["name"] .. " " .. event_json["level"])
end

local function on_research_cancelled(event)
	local event_json = {}
	event_json["event"] = "RESEARCH_CANCELLED"
	for k, v in pairs(event.research) do
		event_json["name"] = get_infinite_research_name(k)
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. event_json["name"])
	end
end

local function on_console_chat(e)
	local event_json = {}
	event_json["event"] = "CHAT"
	if ( e.player_index ~= nul and e.player_index ~= '' ) then
		local player = game.get_player(e.player_index)
		event_json["name"] = player.name
		event_json["message"] = e.message
		helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
		log("[" .. event_json["event"] .. "] " .. event_json["name"] .. ": " .. event_json["message"])
	else
		event_json["name"] = "Console"
		event_json["message"] = e.message
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
end

local function on_init ()
	storage.playerstats = {}
end

local function logStats()
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

local function on_rocket_launched(e)
	local event_json = {}
	event_json["event"] = "ROCKET"
	event_json["reason"] = "ROCKET_LAUNCHED"
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end
local function checkEvolution(e)
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
local function on_trigger_fired_artillery(e)
	local event_json = {}
	event_json["name"] = e.entity.name
	event_json["event"] = "ARTILLERY"
	event_json["message"] = (e.source.name or "no source")
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["name"] .. event_json["message"])
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
}

logging.on_nth_tick = {
	[60*60*10] = function() -- every 10 minutes
		logStats()
	end,
	[60*60*10] = checkEvolution,
}

logging.on_init = on_init

return logging
