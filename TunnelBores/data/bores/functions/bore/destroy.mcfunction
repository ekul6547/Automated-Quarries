function bores:bore/resummon
function bores:bore/storeid
execute as @e[type=minecraft:minecart,tag=bores.commandChair] if score @s bores.id = $bores.id const at @s run function bores:bore/kill_chest_cart
execute as @e[type=minecraft:chest_minecart,tag=bores.container] if score @s bores.id = $bores.id const at @s run function bores:bore/kill_cart
tag @s remove bores.bore
kill @s