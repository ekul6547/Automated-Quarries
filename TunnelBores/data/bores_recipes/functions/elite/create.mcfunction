function bores:construct/start


scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 10
scoreboard players set #bores.construct.level const 4
scoreboard players set #bores.construct.fortune const 2
scoreboard players set #bores.construct.sponge const 1
scoreboard players set #bores.construct.lava const 1
scoreboard players set #bores.construct.bridge const 3
scoreboard players set #bores.construct.tele const 1

scoreboard players set #bores.construct.r const 150
scoreboard players set #bores.construct.g const 255
scoreboard players set #bores.construct.b const 255

function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Elite Tunnel Bore","italic":false,"color":"aqua"}'
function bores:construct/end