# Check if player is in combat
function tpa:in_combat/in_combat

# Check if player is standing still
function tpa:standing_still/standing_stll

# Set default tp cooldown
execute as @a[advancements={tpa:teleporter_advancement=false}] run scoreboard players set @s tpa_tp_cooldown 0

# Store bed cords for scoretp
execute as @a store result score @s scoretp_x run data get entity @s SpawnX
execute as @a store result score @s scoretp_y run data get entity @s SpawnY
execute as @a store result score @s scoretp_z run data get entity @s SpawnZ

# Triggers
scoreboard players enable @a GoHome
scoreboard players enable @a GoSpawn

scoreboard players set @a TICK 1
execute as @a if score @s tpa_tp_cooldown matches 1.. run scoreboard players operation @s tpa_tp_cooldown -= @s TICK

execute as @a[scores={GoSpawn=1.., tpa_tp_cooldown=1..}] run tellraw @s [{"text": "You are on teleportation cooldown. Please wait for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_tp_cooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoSpawn=1.., tpa_combatCooldown=1..}] run tellraw @s [{"text": "You are on combat cooldown. Please wait for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_combatCooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoSpawn=1.., tpa_standingStill_cooldown=1..}] run tellraw @s [{"text": "You are on movement cooldown. Please stand on the same position for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_standingStill_cooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoSpawn=1.., tpa_tp_cooldown=..0, tpa_combatCooldown=..0, tpa_standingStill_cooldown=..0}] at @s run function tpa:go_spawn


execute as @a[scores={GoHome=1.., tpa_tp_cooldown=1..}] run tellraw @s [{"text": "You are on teleportation cooldown. Please wait for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_tp_cooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoHome=1.., tpa_combatCooldown=1..}] run tellraw @s [{"text": "You are on combat cooldown. Please wait for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_combatCooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoHome=1.., tpa_standingStill_cooldown=1..}] run tellraw @s [{"text": "You are on movement cooldown. Please stand on the same position for at least ", "color": "red"}, {"score":{"name":"@s","objective":"tpa_standingStill_cooldown"},"color":"red"}, {"text": " ticks (Every 20 ticks is roughly 1 second)"}]
execute as @a[scores={GoHome=1.., tpa_tp_cooldown=..0, tpa_combatCooldown=..0, tpa_standingStill_cooldown=..0}] positioned 0 0 0 run function tpa:go_bed

# Reset triggers
scoreboard players set @a GoHome 0
scoreboard players set @a GoSpawn 0
