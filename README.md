# Factorio Event Logger [![Release Status](https://github.com/Ralnoc/events-logger/actions/workflows/build-release.yml/badge.svg)](https://github.com/Ralnoc/events-logger/actions/workflows/build-release.yml)

This mod is a fork of [royvandongen Factorio-Event-Logger-Mod](https://github.com/royvandongen/Factorio-Event-Logger-Mod) which does not appear to be getting updated. 

It provides an event logging system for Factorio that generates formatted event logs based on events documented in the  
[Events API](https://lua-api.factorio.com/latest/events.html), enabling server administrators to track game events, and build tooling around it

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

- **Event API**  
  Provides an API for other mods to log custom events.

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

## Default Event Logging

### Settings
The mod provides a settings menu to enable or disable the following event logging formats:
* `Factorio Logs` - Logs events to the standard `factorio-current.log` file output. Default is enabled.
* `JSON Logs` - Logs events to the `script-output/game-events.json` file in JSON format. Default is disabled.

### Usage
All logs are captured in the standard log output. 

Additionally, it is exported as JSON into the file `script-output/game-events.json`. This can be leveraged by your 
automation and tooling.You can review these logs for detailed insights into player activities, game events, and 
overall server health.

## Custom Logging

The `send_event` function allows you to log custom events to the `game-events.json` file. This function is part of the 
remote interface `event-logger` and can be called from other mods or scripts.

### Usage

To use the `send_event` function, you need to call it with a table containing the event details. The table must include 
the following keys:

- `event`: The name of the event (e.g., `"EVENT_NAME"`).
- `tick`: The current game tick (e.g., `game.tick`).
- `data`: A table containing additional event data (e.g., `{["key"] = value}`).

### Example

#### send_event Function

Here is an example of how to call the `send_event` function:

```lua
remote.call("events-logger", "send_event", {
    event = "CUSTOM_EVENT",
    tick = game.tick,
    data = {
        key1 = "value1",
        key2 = "value2"
    }
})
```

#### send_std_log Function

Here is an example of how to call the `send_event` function:

```lua
remote.call("events-logger", "send_std_log",
        CUSTOM_EVENT,
        MESSAGE
)
```

## License

This mod is released under the MIT License. Feel free to modify and distribute as needed.
