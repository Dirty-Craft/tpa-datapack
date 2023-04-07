# Check if player is in combat
function tpa:in_combat/in_combat

# Triggers
scoreboard players enable @a GoHome
scoreboard players enable @a GoSpawn
execute as @a if score @s GoSpawn matches 1.. run function tpa:go_home

# Reset triggers
scoreboard players set @a GoHome 0
scoreboard players set @a GoSpawn 0
