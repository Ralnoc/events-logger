function on_pre_player_died(event)
    local event_json = {}
    event_json["name"] = game.get_player(event.player_index).name
    event_json["event"] = "DIED"
    event_json["reason"] = "no-cause"
    if event.cause and event.cause.type == "character" then
        --PvP death
        event_json["reason"] = "PVP"
        event_json["cause"] = (game.get_player(event.cause.player.index).name or "no-cause")
        factorio_log(event_json["event"], event_json["name"] .. " " .. event_json["reason"])
    elseif (event.cause) then
        event_json["reason"] = "PVE"
        event_json["cause"] = (event.cause.name or "no-cause")
        factorio_log(event_json["event"], event_json["reason"] .. ":" .. event_json["name"] .. " " .. event_json["cause"])
    else
        event_json["reason"] = "ambient damage"
        factorio_log(event_json["event"], event_json["reason"] .. event_json["name"] .. " - " .. event_json["reason"]) --event.g. poison damage
    end
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"] .. " " .. event_json["reason"])
end

function on_player_left_game(event)
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
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"] .. " " .. event_json["reason"])
end

function on_player_joined_game(event)
    local event_json = {}
    event_json["name"] = game.get_player(event.player_index).name
    event_json["event"] = "JOIN"
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"])
end

function on_player_banned(event)
    local event_json = {}
    event_json["name"] = event.player_name
    event_json["event"] = "BANNED"
    event_json["reason"] = event.reason
    event_json["admin"] = event.by_player
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"])
end

function on_player_unbanned(event)
    local event_json = {}
    event_json["name"] = event.player_name
    event_json["event"] = "BANNED"
    event_json["reason"] = event.reason
    event_json["admin"] = event.by_player
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"] .. "by " .. event_json["admin"] .. "for " .. event_json["reason"])
end

function on_character_corpse_expired(event)
    local event_json = {}
    event_json["type"] = event.corpse.type
    event_json["corpse_name"] = event.corpse.name
    event_json["position_x"] = event.corpse.position.x
    event_json["position_y"] = event.corpse.position.y
    event_json["event"] = "CORPSE_EXPIRED"
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["type"] .. event_json["corpse_name"])
end

function on_picked_up_item(event)
    local event_json = {}
    event_json["player_name"] = game.get_player(event.player_index).name
    event_json["item_name"] = event.item_stack.name
    event_json["item_count"] = event.item_stack.count
    event_json["name"] = event.name
    event_json["event"] = "ITEM_PICKED_UP"
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"] .. event_json["item_name"])
end

function on_player_repaired_entity(event)
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
    write_game_event_json(event_json)
    factorio_log(event_json["event"], event_json["name"] .. event_json["entity"]["name"])
end

function on_player_changed_surface(event)
    local event_json = {}
    event_json["player_name"] = game.get_player(event.player_index).name
    event_json["name"] = event.name
    event_json["event"] = "CHANGED_SURFACE"
    if event.surface_index then
        event_json["previous_surface"] = game.get_surface(event.surface_index).name
    end
	event_json["player_surface"] = game.get_player(event.player_index).surface.name
    event_json["tick"] = event.tick
    write_game_event_json(event_json)
    factorio_log(event_json["event"], "Player: " .. event_json["player_name"] .. " Surface: " .. event_json["player_surface"])
end

events[defines.events.on_pre_player_died] = on_pre_player_died
events[defines.events.on_player_left_game] = on_player_left_game
events[defines.events.on_player_joined_game] = on_player_joined_game
events[defines.events.on_player_banned] = on_player_banned
events[defines.events.on_player_unbanned] = on_player_unbanned
events[defines.events.on_character_corpse_expired] = on_character_corpse_expired
events[defines.events.on_picked_up_item] = on_picked_up_item
events[defines.events.on_player_repaired_entity] = on_player_repaired_entity
events[defines.events.on_player_changed_surface] = on_player_changed_surface