tellraw @s [{"text": "Teleported to spawn", "color": "#A020F0", "bold": true}]
playsound entity.enderman.teleport ambient @s
particle minecraft:portal ~ ~ ~ .6 1 .6 0 500
scoreboard players set @s tpa_tp_cooldown 2400
execute as @s[advancements={tpa:teleporter_advancement=false}] run advancement grant @s only tpa:teleporter_advancement


execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posx 0
execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posy 64
execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posz 0

summon minecraft:armor_stand 0 64 0 {Tags: ["spawnPos"], NoGravity: 1b, Invulnerable: 1b}

execute store result entity @e[tag=spawnPos, limit=1] Pos[0] double 1 run scoreboard players get #customSpawn tpa_spawn_posx
execute store result entity @e[tag=spawnPos, limit=1] Pos[1] double 1 run scoreboard players get #customSpawn tpa_spawn_posy
execute store result entity @e[tag=spawnPos, limit=1] Pos[2] double 1 run scoreboard players get #customSpawn tpa_spawn_posz

tellraw @a [{"score":{"name":"#customSpawn","objective":"tpa_spawn_posx"},"color":"red"}]
tellraw @a [{"score":{"name":"#customSpawn","objective":"tpa_spawn_posy"},"color":"red"}]
tellraw @a [{"score":{"name":"#customSpawn","objective":"tpa_spawn_posz"},"color":"red"}]

tp @s @e[tag=spawnPos, limit=1]

kill @e[tag=spawnPos]
