tellraw @s [{"text": "Teleported to spawn", "color": "#A020F0", "bold": true}]
playsound entity.enderman.teleport ambient @s
particle minecraft:portal ~ ~ ~ .6 1 .6 0 500
scoreboard players set @s tpa_tp_cooldown 2400
execute as @s[advancements={tpa:teleporter_advancement=false}] run advancement grant @s only tpa:teleporter_advancement


execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posx 0
execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posy 64
execute as @s if score #customSpawn tpa_custom_spawn matches 0 run scoreboard players set #customSpawn tpa_spawn_posz 0

execute store result score @s scoretp_x run scoreboard players get #customSpawn tpa_spawn_posx
execute store result score @s scoretp_y run scoreboard players get #customSpawn tpa_spawn_posy
execute store result score @s scoretp_z run scoreboard players get #customSpawn tpa_spawn_posz

execute in minecraft:overworld run function em:scoretp