function bores:construct/start

scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 10
scoreboard players set #bores.construct.level const 4
scoreboard players set #bores.construct.fortune const -1
scoreboard players set #bores.construct.sponge const 1
scoreboard players set #bores.construct.lava const 1
scoreboard players set #bores.construct.bridge const 3
scoreboard players set #bores.construct.tele const 3

scoreboard players set #bores.construct.r const 97
scoreboard players set #bores.construct.g const 208
scoreboard players set #bores.construct.b const 42

function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Slimey Tunnel Bore","italic":false,"color":"green"}'
function bores:construct/end