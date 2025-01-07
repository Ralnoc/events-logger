# Factorio Event Logger

This mod is a fork of [royvandongen
Factorio-Event-Logger-Mod](https://github.com/royvandongen/Factorio-Event-Logger-Mod) which does not appear to be 
getting updated. 

It provides an event logging system for Factorio that generates formatted event logs based on events documented in the  
[Events API](https://lua-api.factorio.com/latest/events.html), enabling server administrators and players to track 
game events.

## Features

- **Player Deaths**  
  Logs the death of a player, identifying the cause (PvP, environmental, etc.).

- **Player Join/Leave**  
  Tracks when players join or leave the game and logs their leave reason (e.g., quit, kicked, desync).

- **Chat Logging**  
  Records all chat messages with the sender's name.

- **Research Events**  
  Logs the start, completion, and cancellation of research projects.

- **Entity Placement Tracking**  
  Tracks and logs the number of entities placed by each player.

- **Rocket Launches**  
  Logs whenever a rocket is launched.

- **Evolution Factor Monitoring**  
  Periodically logs the enemy evolution factor.

- **Artillery Events**  
  Tracks and logs artillery triggers.

- **Playtime and Statistics**  
  Periodically logs playtime and entity placement statistics for each player.

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

- `on_rocket_launched`
- `on_research_started`
- `on_research_finished`
- `on_research_cancelled`
- `on_player_joined_game`
- `on_player_left_game`
- `on_pre_player_died`
- `on_built_entity`
- `on_trigger_fired_artillery`
- `on_console_chat`

The statistics logging is performed every 10 minutes.

## Usage

All logs are saved in the standard log output. You can review these logs for detailed insights into player 
activities, game events, and overall server health.

## License

This mod is released under the MIT License. Feel free to modify and distribute as needed.
