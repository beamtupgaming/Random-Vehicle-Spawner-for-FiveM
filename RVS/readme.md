# Random Vehicle Spawner Resource by Beamtupgaming

This resource adds a script to your FiveM server that allows for the spawning of random vehicles at random intervals. Players can start and stop the spawning using chat commands.

## Features

- Spawns random vehicles from a predefined list.
- Adjustable spawn intervals between 1 to 2 minutes.
- Players can start spawning using the "/startrando" command.
- Players can stop spawning using the "/stoprando" command.
- Proper handling to prevent multiple spawning threads and clean stopping.

## Installation

1. Drag and drop the "RVS" folder and it's contents into your "Resources" folder on your FiveM server.
2. Add RVS to your starts on your server config if needed.
3. Start/restart your server. Alternatively, in FiveM you can use F8 -> start/stop RVS to handle the resource individually.

## Usage

- Use the command `/startrando` in the in-game chat to start spawning random vehicles.
- Use the command `/stoprando` in the in-game chat to stop spawning random vehicles.

## Configuration

You can customize the script by modifying the `vehicles` table in the `randomvehicle.lua` script. Add or remove vehicle names as needed.

## Credits

Script created by Abner.

## License

This resource is provided under the MIT License. 

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
