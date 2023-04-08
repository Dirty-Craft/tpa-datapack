tellraw @s [{"text": "Teleported to spawn", "color": "#A020F0", "bold": true}]
playsound entity.enderman.teleport ambient @s
particle minecraft:portal ~ ~ ~ .6 1 .6 0 500
scoreboard players set @s tpa_tp_cooldown 2400
execute in minecraft:overworld run tp @s 0 64 0
execute as @s[advancements={tpa:teleporter_advancement=false}] run advancement grant @s only tpa:teleporter_advancement