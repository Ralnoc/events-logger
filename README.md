# Factorio Event Logger

This mod provides an extensive event logging system for Factorio that generates formatted event logs based on the 
[Events API](https://lua-api.factorio.com/latest/events.html), enabling server administrators and players to track 
critical game events. The logged data is written to `script-output/ext/awflogging.out`.

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

1. Download or clone this repository.
2. Place the mod folder into your Factorio `mods` directory.
3. Start Factorio, and enable the mod in the Mod Manager.

## Configuration

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

The statistics logging is performed every 10 minutes by default.

## Usage

All logs are saved in `script-output/ext/awflogging.out`. You can review these logs for detailed insights into player 
activities, game events, and overall server health.

## License

This mod is released under the MIT License. Feel free to modify and distribute as needed.
