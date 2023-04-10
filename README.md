# Minecraft Teleportation Datapack 1.19

Simple datapack for teleporting between spawn and your bed. (1.19+)

## Installation

Download the datapack and extract it in your world's `datapack` folder. If you're on a server you might need to run `/reload`.

## Features

- Use `/trigger GoHome` to teleport to your bed (or other spawnpoints).
- Use `/trigger GoSpawn` to teleport to world spawn (0 64 0).
- 2 minutes cooldown after each teleport.
- 10 seconds cooldown for combat.
- 10 seconds cooldown for movement.

## Configuring Spawn Location

By default spawn location is set to 0 64 0, however you can opt out of the default with the following command:

```mcfunction
/scoreboard players set #customSpawn tpa_custom_spawn 1
```

After that you can configure the exact cordinates:

```mcfunction
/scoreboard players set #customSpawn tpa_spawn_posx 100
/scoreboard players set #customSpawn tpa_spawn_posy 64
/scoreboard players set #customSpawn tpa_spawn_posz 100
```

## TODO

- Fix the combat cooldown not having a default value.

## Credits

- https://github.com/emeraldfyr3/em-lib/
