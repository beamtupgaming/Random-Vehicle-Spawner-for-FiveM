# Random Vehicle Spawner Resource

This resource adds a script to your FiveM server that allows for the spawning of random vehicles at random intervals. Players can start and stop the spawning using chat commands.

## Features

- Spawns random vehicles from a predefined list.
- Adjustable spawn intervals between 1 to 2 minutes.
- Players can start spawning using the "/startrando" command.
- Players can stop spawning using the "/stoprando" command.
- Proper handling to prevent multiple spawning threads and clean stopping.

## Installation

1. Copy the contents of the `randomvehicle.lua` script and create a new LUA script file in your resource folder.
2. Create a `meta.xml` file in the same folder and define the resource settings.
3. Add the resource folder to the resources directory of your FiveM server.
4. Restart or start your FiveM server.
5. Use the `/start randomvehicle_spawner` command in the server console to start the resource.

## Usage

- Use the command `/startrando` in the in-game chat to start spawning random vehicles.
- Use the command `/stoprando` in the in-game chat to stop spawning random vehicles.

## Configuration

You can customize the script by modifying the `vehicles` table in the `randomvehicle.lua` script. Add or remove vehicle names as needed.

## Credits

Script created by Abner.

## License

This resource is provided under the MIT License.
