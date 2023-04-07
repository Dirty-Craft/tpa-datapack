scoreboard players set @a TICK 1

# Compare damage with last tick
execute as @a if score @s tpa_damageBlocked > @s tpa_damageBlocked_temp run scoreboard players set @s tpa_combatCooldown 200
execute as @a if score @s tpa_damageTaken > @s tpa_damageTaken_temp run scoreboard players set @s tpa_combatCooldown 200
execute as @a if score @s tpa_damageDealt > @s tpa_damageDealt_temp run scoreboard players set @s tpa_combatCooldown 200

# Reset if player just died
execute as @a[scores={tpa_sinceDeath=0}] run scoreboard players set @s tpa_combatCooldown 0

# Countdown the timer
execute as @a if score @s tpa_combatCooldown matches 1.. run scoreboard players operation @s tpa_combatCooldown -= @s TICK


# Store previous value for the next tick
execute as @a store result score @s tpa_damageBlocked_temp run scoreboard players get @s tpa_damageBlocked 
execute as @a store result score @s tpa_damageDealt_temp run scoreboard players get @s tpa_damageDealt
execute as @a store result score @s tpa_damageTaken_temp run scoreboard players get @s tpa_damageTaken