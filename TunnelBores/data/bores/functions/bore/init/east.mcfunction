summon minecart ~-3.7 ~2 ~ {NoGravity:1b,Tags:["bores.commandChair","bores.setid"],Rotation:[180f,0f]}
execute as @e[tag=bores.setid,limit=1] run function bores:bore/init/setid
summon chest_minecart ~-6 ~0.6 ~ {NoGravity:1b,Tags:["bores.container","bores.setid"],Rotation:[180f,90f],CustomName:'{"text":"Tunnel Bore Fuel"}'}
execute as @e[tag=bores.setid,limit=1] run function bores:bore/init/setid
scoreboard players set @s direction 1