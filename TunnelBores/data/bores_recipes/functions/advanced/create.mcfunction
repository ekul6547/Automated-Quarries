function bores:construct/start

scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 15
scoreboard players set #bores.construct.level const 3
scoreboard players set #bores.construct.fortune const 1
scoreboard players set #bores.construct.sponge const 1
scoreboard players set #bores.construct.bridge const 1

scoreboard players set #bores.construct.r const 255
scoreboard players set #bores.construct.g const 255
scoreboard players set #bores.construct.b const 128

function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Advanced Tunnel Bore","italic":false,"color":"yellow"}'
function bores:construct/end