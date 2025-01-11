# Factorio Event Logger [![Release Status](https://github.com/Ralnoc/events-logger/actions/workflows/build-release.yml/badge.svg)](https://github.com/Ralnoc/events-logger/actions/workflows/build-release.yml)

This mod is a fork of [royvandongen Factorio-Event-Logger-Mod](https://github.com/royvandongen/Factorio-Event-Logger-Mod) which does not appear to be getting updated. 

It provides an event logging system for Factorio that generates formatted event logs based on events documented in the  
[Events API](https://lua-api.factorio.com/latest/events.html), enabling server administrators to track game events, and build tooling around it

## Features

- **Playtime and Statistics**  
  Periodically logs ticks, playtime and entity placement statistics for each player.

- **Event Logging**  
  Logs the output of documented events to the console log for visibility

- **JSON Output**  
  Writes the events in JSON to a file that can be ingested by other tools.

## Installation

### Mod Portal Installation
1. Search for "Events Logger" in the in-game Mod Portal.
2. Click the "Install" button to add the mod to your game.

### Manual Installation
1. Download or clone this repository.
2. Place the mod folder into your Factorio `mods` directory.
3. Start Factorio, and enable the mod in the Mod Manager.

## Current Hooks

This mod uses the following event hooks:

- `on_biter_base_built`, `on_build_base_arrived`, `on_cancelled_deconstruction`,
- `on_cancelled_upgrade`, `on_cargo_pod_finished_ascending`, `on_combat_robot_expired`,
- `on_entity_damaged`, `on_force_cease_fire_changed`, `on_force_created`,
- `on_force_friends_changed` `on_force_reset`, `on_forces_merged`,
- `on_forces_merging`, `on_land_mine_armed`, `on_player_changed_force`,
- `on_player_changed_surface`, `on_player_cheat_mode_disabled`, `on_player_cheat_mode_enabled`,
- `on_player_created`, `on_player_demoted`, `on_player_died`,
- `on_player_driving_changed_state`, `on_player_kicked`, `on_player_promoted`,
- `on_player_removed`, `on_player_removed_equipment`, `on_player_respawned`,
- `on_player_reverse_selected_area`, `on_player_rotated_entity`, `on_player_selected_area`,
- `on_player_set_quick_bar_slot`, `on_player_setup_blueprint`, `on_player_toggled_alt_mode`,
- `on_player_toggled_map_editor`, `on_player_trash_inventory_changed`, `on_player_unmuted`,
- `on_player_used_capsule`, `on_player_used_spidertron_remote`, `on_pre_build`,
- `on_pre_player_crafted_it` `on_pre_player_left_game`, `on_pre_player_mined_item`,
- `on_pre_player_removed`, `on_pre_player_toggled_map_editor`, `on_pre_robot_exploded_cliff`,
- `on_research_moved`, `on_research_reversed`, `on_resource_depleted`,
- `on_robot_built_entit` `on_robot_built_tile`, `on_robot_exploded_cliff`,
- `on_robot_mined`, `on_robot_mined_entity`, `on_robot_mined_tile`,
- `on_robot_pre_mine` `on_rocket_launch_ordered`, `on_sector_scanned`,
- `on_selected_entity_changed`, `on_space_platform_built_entity`, `on_space_platform_built_tile`,
- `on_space_platform_changed_state`, `on_space_platform_mined_entity`, `on_space_platform_mined_item`,
- `on_space_platform_mined_tile`, `on_space_platform_pre_mined`, `on_spider_command_completed`,
- `on_surface_cleared`, `on_technology_effects_reset`, `on_train_changed_state`,
- `on_train_created`, `on_train_schedule_changed`, `on_worker_robot_expired`,

The statistics logging is performed every 10 minutes.

## Usage

All logs are captured in the standard log output. 

Additionally, it is exported as JSON into the file `script-output/game-events.json`. This can be leveraged by your 
automation and tooling.You can review these logs for detailed insights into player activities, game events, and 
overall server health.

## License

This mod is released under the MIT License. Feel free to modify and distribute as needed.
