local function on_biter_base_built(event)
	local event_json = {}
	event_json["event"] = "BITER_BASE_BUILT"
	event_json["reason"] = "BITER_BASE_BUILT"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_build_base_arrived(event)
	local event_json = {}
	event_json["event"] = "BUILD_BASE_ARRIVED"
	event_json["reason"] = "BUILD_BASE_ARRIVED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_cancelled_deconstruction(event)
	local event_json = {}
	event_json["event"] = "CANCELLED_DECONSTRUCTION"
	event_json["reason"] = "CANCELLED_DECONSTRUCTION"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_cancelled_upgrade(event)
	local event_json = {}
	event_json["event"] = "CANCELLED_UPGRADE"
	event_json["reason"] = "CANCELLED_UPGRADE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_cargo_pod_finished_ascending(event)
	local event_json = {}
	event_json["event"] = "CARGO_POD_FINISHED_ASCENDING"
	event_json["reason"] = "CARGO_POD_FINISHED_ASCENDING"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_combat_robot_expired(event)
	local event_json = {}
	event_json["event"] = "COMBAT_ROBOT_EXPIRED"
	event_json["reason"] = "COMBAT_ROBOT_EXPIRED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_entity_damaged(event)
	local event_json = {}
	event_json["event"] = "ENTITY_DAMAGED"
	event_json["reason"] = "ENTITY_DAMAGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_force_cease_fire_changed(event)
	local event_json = {}
	event_json["event"] = "FORCE_CEASE_FIRE_CHANGED"
	event_json["reason"] = "FORCE_CEASE_FIRE_CHANGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_force_created(event)
	local event_json = {}
	event_json["event"] = "FORCE_CREATED"
	event_json["reason"] = "FORCE_CREATED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_force_friends_changed(event)
	local event_json = {}
	event_json["event"] = "FORCE_FRIENDS_CHANGED"
	event_json["reason"] = "FORCE_FRIENDS_CHANGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_force_reset(event)
	local event_json = {}
	event_json["event"] = "FORCE_RESET"
	event_json["reason"] = "FORCE_RESET"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_forces_merged(event)
	local event_json = {}
	event_json["event"] = "FORCES_MERGED"
	event_json["reason"] = "FORCES_MERGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_forces_merging(event)
	local event_json = {}
	event_json["event"] = "FORCES_MERGING"
	event_json["reason"] = "FORCES_MERGING"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_land_mine_armed(event)
	local event_json = {}
	event_json["event"] = "LAND_MINE_ARMED"
	event_json["reason"] = "LAND_MINE_ARMED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_changed_force(event)
	local event_json = {}
	event_json["event"] = "PLAYER_CHANGED_FORCE"
	event_json["reason"] = "PLAYER_CHANGED_FORCE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_changed_surface(event)
	local event_json = {}
	event_json["event"] = "PLAYER_CHANGED_SURFACE"
	event_json["reason"] = "PLAYER_CHANGED_SURFACE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_cheat_mode_disabled(event)
	local event_json = {}
	event_json["event"] = "PLAYER_CHEAT_MODE_DISABLED"
	event_json["reason"] = "PLAYER_CHEAT_MODE_DISABLED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_cheat_mode_enabled(event)
	local event_json = {}
	event_json["event"] = "PLAYER_CHEAT_MODE_ENABLED"
	event_json["reason"] = "PLAYER_CHEAT_MODE_ENABLED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_created(event)
	local event_json = {}
	event_json["event"] = "PLAYER_CREATED"
	event_json["reason"] = "PLAYER_CREATED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_demoted(event)
	local event_json = {}
	event_json["event"] = "PLAYER_DEMOTED"
	event_json["reason"] = "PLAYER_DEMOTED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_died(event)
	local event_json = {}
	event_json["event"] = "PLAYER_DIED"
	event_json["reason"] = "PLAYER_DIED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_driving_changed_state(event)
	local event_json = {}
	event_json["event"] = "PLAYER_DRIVING_CHANGED_STATE"
	event_json["reason"] = "PLAYER_DRIVING_CHANGED_STATE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_kicked(event)
	local event_json = {}
	event_json["event"] = "PLAYER_KICKED"
	event_json["reason"] = "PLAYER_KICKED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_promoted(event)
	local event_json = {}
	event_json["event"] = "PLAYER_PROMOTED"
	event_json["reason"] = "PLAYER_PROMOTED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_removed(event)
	local event_json = {}
	event_json["event"] = "PLAYER_REMOVED"
	event_json["reason"] = "PLAYER_REMOVED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_removed_equipment(event)
	local event_json = {}
	event_json["event"] = "PLAYER_REMOVED_EQUIPMENT"
	event_json["reason"] = "PLAYER_REMOVED_EQUIPMENT"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_respawned(event)
	local event_json = {}
	event_json["event"] = "PLAYER_RESPAWNED"
	event_json["reason"] = "PLAYER_RESPAWNED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_reverse_selected_area(event)
	local event_json = {}
	event_json["event"] = "PLAYER_REVERSE_SELECTED_AREA"
	event_json["reason"] = "PLAYER_REVERSE_SELECTED_AREA"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_rotated_entity(event)
	local event_json = {}
	event_json["event"] = "PLAYER_ROTATED_ENTITY"
	event_json["reason"] = "PLAYER_ROTATED_ENTITY"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_selected_area(event)
	local event_json = {}
	event_json["event"] = "PLAYER_SELECTED_AREA"
	event_json["reason"] = "PLAYER_SELECTED_AREA"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_set_quick_bar_slot(event)
	local event_json = {}
	event_json["event"] = "PLAYER_SET_QUICK_BAR_SLOT"
	event_json["reason"] = "PLAYER_SET_QUICK_BAR_SLOT"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_setup_blueprint(event)
	local event_json = {}
	event_json["event"] = "PLAYER_SETUP_BLUEPRINT"
	event_json["reason"] = "PLAYER_SETUP_BLUEPRINT"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_toggled_alt_mode(event)
	local event_json = {}
	event_json["event"] = "PLAYER_TOGGLED_ALT_MODE"
	event_json["reason"] = "PLAYER_TOGGLED_ALT_MODE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_toggled_map_editor(event)
	local event_json = {}
	event_json["event"] = "PLAYER_TOGGLED_MAP_EDITOR"
	event_json["reason"] = "PLAYER_TOGGLED_MAP_EDITOR"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_trash_inventory_changed(event)
	local event_json = {}
	event_json["event"] = "PLAYER_TRASH_INVENTORY_CHANGED"
	event_json["reason"] = "PLAYER_TRASH_INVENTORY_CHANGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_unmuted(event)
	local event_json = {}
	event_json["event"] = "PLAYER_UNMUTED"
	event_json["reason"] = "PLAYER_UNMUTED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_used_capsule(event)
	local event_json = {}
	event_json["event"] = "PLAYER_USED_CAPSULE"
	event_json["reason"] = "PLAYER_USED_CAPSULE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_player_used_spidertron_remote(event)
	local event_json = {}
	event_json["event"] = "PLAYER_USED_SPIDERTRREMOTE"
	event_json["reason"] = "PLAYER_USED_SPIDERTRREMOTE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_build(event)
	local event_json = {}
	event_json["event"] = "PRE_BUILD"
	event_json["reason"] = "PRE_BUILD"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_player_left_game(event)
	local event_json = {}
	event_json["event"] = "PRE_PLAYER_LEFT_GAME"
	event_json["reason"] = "PRE_PLAYER_LEFT_GAME"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_player_mined_item(event)
	local event_json = {}
	event_json["event"] = "PRE_PLAYER_MINED_ITEM"
	event_json["reason"] = "PRE_PLAYER_MINED_ITEM"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_player_removed(event)
	local event_json = {}
	event_json["event"] = "PRE_PLAYER_REMOVED"
	event_json["reason"] = "PRE_PLAYER_REMOVED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_player_toggled_map_editor(event)
	local event_json = {}
	event_json["event"] = "PRE_PLAYER_TOGGLED_MAP_EDITOR"
	event_json["reason"] = "PRE_PLAYER_TOGGLED_MAP_EDITOR"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_pre_robot_exploded_cliff(event)
	local event_json = {}
	event_json["event"] = "PRE_ROBOT_EXPLODED_CLIFF"
	event_json["reason"] = "PRE_ROBOT_EXPLODED_CLIFF"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_research_moved(event)
	local event_json = {}
	event_json["event"] = "RESEARCH_MOVED"
	event_json["reason"] = "RESEARCH_MOVED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_research_reversed(event)
	local event_json = {}
	event_json["event"] = "RESEARCH_REVERSED"
	event_json["reason"] = "RESEARCH_REVERSED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_resource_depleted(event)
	local event_json = {}
	event_json["event"] = "RESOURCE_DEPLETED"
	event_json["reason"] = "RESOURCE_DEPLETED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_built_entity(event)
	local event_json = {}
	event_json["event"] = "ROBOT_BUILT_ENTITY"
	event_json["reason"] = "ROBOT_BUILT_ENTITY"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_built_tile(event)
	local event_json = {}
	event_json["event"] = "ROBOT_BUILT_TILE"
	event_json["reason"] = "ROBOT_BUILT_TILE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_exploded_cliff(event)
	local event_json = {}
	event_json["event"] = "ROBOT_EXPLODED_CLIFF"
	event_json["reason"] = "ROBOT_EXPLODED_CLIFF"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_mined(event)
	local event_json = {}
	event_json["event"] = "ROBOT_MINED"
	event_json["reason"] = "ROBOT_MINED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_mined_entity(event)
	local event_json = {}
	event_json["event"] = "ROBOT_MINED_ENTITY"
	event_json["reason"] = "ROBOT_MINED_ENTITY"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_mined_tile(event)
	local event_json = {}
	event_json["event"] = "ROBOT_MINED_TILE"
	event_json["reason"] = "ROBOT_MINED_TILE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_robot_pre_mined(event)
	local event_json = {}
	event_json["event"] = "ROBOT_PRE_MINED"
	event_json["reason"] = "ROBOT_PRE_MINED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_rocket_launch_ordered(event)
	local event_json = {}
	event_json["event"] = "ROCKET_LAUNCH_ORDERED"
	event_json["reason"] = "ROCKET_LAUNCH_ORDERED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_sector_scanned(event)
	local event_json = {}
	event_json["event"] = "SECTOR_SCANNED"
	event_json["reason"] = "SECTOR_SCANNED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_selected_entity_changed(event)
	local event_json = {}
	event_json["event"] = "SELECTED_ENTITY_CHANGED"
	event_json["reason"] = "SELECTED_ENTITY_CHANGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_built_entity(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_BUILT_ENTITY"
	event_json["reason"] = "SPACE_PLATFORM_BUILT_ENTITY"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_built_tile(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_BUILT_TILE"
	event_json["reason"] = "SPACE_PLATFORM_BUILT_TILE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_changed_state(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_CHANGED_STATE"
	event_json["reason"] = "SPACE_PLATFORM_CHANGED_STATE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_mined_entity(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_MINED_ENTITY"
	event_json["reason"] = "SPACE_PLATFORM_MINED_ENTITY"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_mined_item(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_MINED_ITEM"
	event_json["reason"] = "SPACE_PLATFORM_MINED_ITEM"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_mined_tile(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_MINED_TILE"
	event_json["reason"] = "SPACE_PLATFORM_MINED_TILE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_space_platform_pre_mined(event)
	local event_json = {}
	event_json["event"] = "SPACE_PLATFORM_PRE_MINED"
	event_json["reason"] = "SPACE_PLATFORM_PRE_MINED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_spider_command_completed(event)
	local event_json = {}
	event_json["event"] = "SPIDER_COMMAND_COMPLETED"
	event_json["reason"] = "SPIDER_COMMAND_COMPLETED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_surface_cleared(event)
	local event_json = {}
	event_json["event"] = "SURFACE_CLEARED"
	event_json["reason"] = "SURFACE_CLEARED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_technology_effects_reset(event)
	local event_json = {}
	event_json["event"] = "TECHNOLOGY_EFFECTS_RESET"
	event_json["reason"] = "TECHNOLOGY_EFFECTS_RESET"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_train_changed_state(event)
	local event_json = {}
	event_json["event"] = "TRAIN_CHANGED_STATE"
	event_json["reason"] = "TRAIN_CHANGED_STATE"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_train_created(event)
	local event_json = {}
	event_json["event"] = "TRAIN_CREATED"
	event_json["reason"] = "TRAIN_CREATED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_train_schedule_changed(event)
	local event_json = {}
	event_json["event"] = "TRAIN_SCHEDULE_CHANGED"
	event_json["reason"] = "TRAIN_SCHEDULE_CHANGED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end


local function on_worker_robot_expired(event)
	local event_json = {}
	event_json["event"] = "WORKER_ROBOT_EXPIRED"
	event_json["reason"] = "WORKER_ROBOT_EXPIRED"
	event_json["tick"] = event.tick
	helpers.write_file("game-events.json", helpers.table_to_json(event_json) .. "\n", true)
	log("[" .. event_json["event"] .. "] " .. event_json["reason"])
end



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
	[defines.events.on_biter_base_built] = on_biter_base_built,
	[defines.events.on_build_base_arrived] = on_build_base_arrived,
	[defines.events.on_cancelled_deconstruction] = on_cancelled_deconstruction,
	[defines.events.on_cancelled_upgrade] = on_cancelled_upgrade,
	[defines.events.on_cargo_pod_finished_ascending] = on_cargo_pod_finished_ascending,
	[defines.events.on_combat_robot_expired] = on_combat_robot_expired,
	[defines.events.on_entity_damaged] = on_entity_damaged,
	[defines.events.on_force_cease_fire_changed] = on_force_cease_fire_changed,
	[defines.events.on_force_created] = on_force_created,
	[defines.events.on_force_friends_changed] = on_force_friends_changed,
	[defines.events.on_force_reset] = on_force_reset,
	[defines.events.on_forces_merged] = on_forces_merged,
	[defines.events.on_forces_merging] = on_forces_merging,
	[defines.events.on_land_mine_armed] = on_land_mine_armed,
	[defines.events.on_player_changed_force] = on_player_changed_force,
	[defines.events.on_player_changed_surface] = on_player_changed_surface,
	[defines.events.on_player_cheat_mode_disabled] = on_player_cheat_mode_disabled,
	[defines.events.on_player_cheat_mode_enabled] = on_player_cheat_mode_enabled,
	[defines.events.on_player_created] = on_player_created,
	[defines.events.on_player_demoted] = on_player_demoted,
	[defines.events.on_player_died] = on_player_died,
	[defines.events.on_player_driving_changed_state] = on_player_driving_changed_state,
	[defines.events.on_player_kicked] = on_player_kicked,
	[defines.events.on_player_promoted] = on_player_promoted,
	[defines.events.on_player_removed] = on_player_removed,
	[defines.events.on_player_removed_equipment] = on_player_removed_equipment,
	[defines.events.on_player_respawned] = on_player_respawned,
	[defines.events.on_player_reverse_selected_area] = on_player_reverse_selected_area,
	[defines.events.on_player_rotated_entity] = on_player_rotated_entity,
	[defines.events.on_player_selected_area] = on_player_selected_area,
	[defines.events.on_player_set_quick_bar_slot] = on_player_set_quick_bar_slot,
	[defines.events.on_player_setup_blueprint] = on_player_setup_blueprint,
	[defines.events.on_player_toggled_alt_mode] = on_player_toggled_alt_mode,
	[defines.events.on_player_toggled_map_editor] = on_player_toggled_map_editor,
	[defines.events.on_player_trash_inventory_changed] = on_player_trash_inventory_changed,
	[defines.events.on_player_unmuted] = on_player_unmuted,
	[defines.events.on_player_used_capsule] = on_player_used_capsule,
	[defines.events.on_player_used_spidertron_remote] = on_player_used_spidertron_remote,
	[defines.events.on_pre_build] = on_pre_build,
	[defines.events.on_pre_player_left_game] = on_pre_player_left_game,
	[defines.events.on_pre_player_mined_item] = on_pre_player_mined_item,
	[defines.events.on_pre_player_removed] = on_pre_player_removed,
	[defines.events.on_pre_player_toggled_map_editor] = on_pre_player_toggled_map_editor,
	[defines.events.on_pre_robot_exploded_cliff] = on_pre_robot_exploded_cliff,
	[defines.events.on_research_moved] = on_research_moved,
	[defines.events.on_research_reversed] = on_research_reversed,
	[defines.events.on_resource_depleted] = on_resource_depleted,
	[defines.events.on_robot_built_entity] = on_robot_built_entity,
	[defines.events.on_robot_built_tile] = on_robot_built_tile,
	[defines.events.on_robot_exploded_cliff] = on_robot_exploded_cliff,
	[defines.events.on_robot_mined] = on_robot_mined,
	[defines.events.on_robot_mined_entity] = on_robot_mined_entity,
	[defines.events.on_robot_mined_tile] = on_robot_mined_tile,
	[defines.events.on_robot_pre_mined] = on_robot_pre_mined,
	[defines.events.on_rocket_launch_ordered] = on_rocket_launch_ordered,
	[defines.events.on_sector_scanned] = on_sector_scanned,
	[defines.events.on_selected_entity_changed] = on_selected_entity_changed,
	[defines.events.on_space_platform_built_entity] = on_space_platform_built_entity,
	[defines.events.on_space_platform_built_tile] = on_space_platform_built_tile,
	[defines.events.on_space_platform_changed_state] = on_space_platform_changed_state,
	[defines.events.on_space_platform_mined_entity] = on_space_platform_mined_entity,
	[defines.events.on_space_platform_mined_item] = on_space_platform_mined_item,
	[defines.events.on_space_platform_mined_tile] = on_space_platform_mined_tile,
	[defines.events.on_space_platform_pre_mined] = on_space_platform_pre_mined,
	[defines.events.on_spider_command_completed] = on_spider_command_completed,
	[defines.events.on_surface_cleared] = on_surface_cleared,
	[defines.events.on_technology_effects_reset] = on_technology_effects_reset,
	[defines.events.on_train_changed_state] = on_train_changed_state,
	[defines.events.on_train_created] = on_train_created,
	[defines.events.on_train_schedule_changed] = on_train_schedule_changed,
	[defines.events.on_trigger_fired_artillery] = on_trigger_fired_artillery,
	[defines.events.on_worker_robot_expired] = on_worker_robot_expired,
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
