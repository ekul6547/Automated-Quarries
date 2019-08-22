summon minecart ~ ~2 ~3.7 {NoGravity:1b,Tags:["bores.commandChair","bores.setid"],Rotation:[90f,0f]}
execute as @e[tag=bores.setid,limit=1] run function bores:bore/init/setid
summon chest_minecart ~ ~0.6 ~6 {NoGravity:1b,Tags:["bores.container","bores.setid"],Rotation:[90f,90f],CustomName:'{"text":"Tunnel Bore Fuel"}'}
execute as @e[tag=bores.setid,limit=1] run function bores:bore/init/setid
scoreboard players set @s direction 0