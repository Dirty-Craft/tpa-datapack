tellraw @s [{"text": "Oh sweet home :)", "color": "green", "bold": true}]
playsound entity.enderman.teleport ambient @s
particle minecraft:portal ~ ~ ~ .6 1 .6 0 500
scoreboard players set @s tpa_tp_cooldown 2400
function em:scoretp
execute as @s[advancements={tpa:teleporter_advancement=false}] run advancement grant @s only tpa:teleporter_advancement