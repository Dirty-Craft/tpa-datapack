tellraw @a [{"text":"TPA Datapack - by GoodGuyMahdi","bold":true,"color":"red"}]

function _em:_init

scoreboard objectives add GoHome trigger
scoreboard objectives add GoSpawn trigger
scoreboard objectives add tpa_tp_cooldown dummy

function tpa:in_combat/load
function tpa:standing_still/load

scoreboard objectives add tpa_sinceDeath minecraft.custom:minecraft.time_since_death

scoreboard objectives add TICK dummy