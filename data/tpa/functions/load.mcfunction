tellraw @a [{"text":"TPA Datapack - by GoodGuyMahdi","bold":true,"color":"red"}]

function _em:_init

scoreboard objectives add GoHome trigger
scoreboard objectives add GoSpawn trigger
scoreboard objectives add tpa_tp_cooldown dummy

scoreboard objectives add tpa_spawn_posx dummy
scoreboard objectives add tpa_spawn_posy dummy
scoreboard objectives add tpa_spawn_posz dummy
scoreboard objectives add tpa_custom_spawn dummy

execute unless score #customSpawn tpa_custom_spawn matches 0.. run scoreboard players set #customSpawn tpa_custom_spawn 0

function tpa:in_combat/load
function tpa:standing_still/load

scoreboard objectives add tpa_sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add TICK dummy