tellraw @a [{"text":"TPA Datapack - by GoodGuyMahdi","bold":true,"color":"red"}]

scoreboard objectives add GoHome trigger
scoreboard objectives add GoSpawn trigger

scoreboard objectives add tpa_damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add tpa_damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add tpa_damageDealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add tpa_damageBlocked minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add tpa_damageTaken_temp dummy
scoreboard objectives add tpa_damageDealt_temp dummy
scoreboard objectives add tpa_damageBlocked_temp dummy

scoreboard objectives add tpa_combatCooldown dummy
scoreboard objectives add tpa_inCombat dummy

scoreboard objectives add tpa_sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add TICK dummy