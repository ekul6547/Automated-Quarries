execute if entity @s[nbt={Fire:0s}] run data merge entity @s {Fire:32767}
function bores:bore/storeid
execute at @s run function bores:bore/testdestroy

execute if entity @s[tag=bores.bore,tag=!bores.active] if score @s bores.fuel matches ..0 run function bores:bore/fuel/refuel
execute if entity @s[tag=bores.bore,tag=bores.active] run function bores:bore/while_active/main
function bores:bore/while_active/tele_carts/testfor