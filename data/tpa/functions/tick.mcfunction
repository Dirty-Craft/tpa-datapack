# Check if player is in combat
function tpa:in_combat/in_combat

# Check if player is standing still
function tpa:standing_still/standing_stll

# Store bed cords for scoretp
execute as @a store result score @s scoretp_x run data get entity @s SpawnX
execute as @a store result score @s scoretp_y run data get entity @s SpawnY
execute as @a store result score @s scoretp_z run data get entity @s SpawnZ

# Triggers
scoreboard players enable @a GoHome
scoreboard players enable @a GoSpawn
execute as @a if score @s GoSpawn matches 1.. run function tpa:go_spawn
execute as @a if score @s GoHome matches 1.. positioned 0 0 0 run function tpa:go_bed

# Reset triggers
scoreboard players set @a GoHome 0
scoreboard players set @a GoSpawn 0
