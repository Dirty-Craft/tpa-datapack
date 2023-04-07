tellraw @s [{"text": "Teleported to spawn", "color": "#A020F0", "bold": true}]
playsound entity.enderman.teleport ambient @s
particle minecraft:portal ~ ~ ~ .6 1 .6 0 500
scoreboard players set @s tpa_tp_cooldown 2400
tp @s 0 64 0