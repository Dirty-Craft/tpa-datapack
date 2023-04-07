scoreboard players set @a TICK 1

# Store the current position
execute as @a store result score @s tpa_posx run data get entity @s Pos[0]
execute as @a store result score @s tpa_posy run data get entity @s Pos[1]
execute as @a store result score @s tpa_posz run data get entity @s Pos[2]

# compare position with last tick
execute as @a if score @s tpa_posx < @s tpa_posx_temp run scoreboard players set @s tpa_standingStill_cooldown 200
execute as @a if score @s tpa_posx > @s tpa_posx_temp run scoreboard players set @s tpa_standingStill_cooldown 200

execute as @a if score @s tpa_posy > @s tpa_posy_temp run scoreboard players set @s tpa_standingStill_cooldown 200
execute as @a if score @s tpa_posy < @s tpa_posy_temp run scoreboard players set @s tpa_standingStill_cooldown 200

execute as @a if score @s tpa_posz > @s tpa_posz_temp run scoreboard players set @s tpa_standingStill_cooldown 200
execute as @a if score @s tpa_posz < @s tpa_posz_temp run scoreboard players set @s tpa_standingStill_cooldown 200

# Countdown the timer
execute as @a if score @s tpa_standingStill_cooldown matches 1.. run scoreboard players set @s tpa_standingStill 0
execute as @a if score @s tpa_standingStill_cooldown matches 0 run scoreboard players set @s tpa_standingStill 1
execute as @a if score @s tpa_standingStill_cooldown matches 1.. run scoreboard players operation @s tpa_standingStill_cooldown -= @s TICK


# Store previous value for the next tick
execute as @a store result score @s tpa_posx_temp run data get entity @s Pos[0]
execute as @a store result score @s tpa_posy_temp run data get entity @s Pos[1]
execute as @a store result score @s tpa_posz_temp run data get entity @s Pos[2]