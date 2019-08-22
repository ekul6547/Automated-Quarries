function bores:construct/start

scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 20
scoreboard players set #bores.construct.level const 2
scoreboard players set #bores.construct.sponge const 1
scoreboard players set #bores.construct.bridge const 2

scoreboard players set #bores.construct.r const 200
scoreboard players set #bores.construct.g const 200
scoreboard players set #bores.construct.b const 200

function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Basic Tunnel Bore","italic":false,"color":"gray"}'
function bores:construct/end