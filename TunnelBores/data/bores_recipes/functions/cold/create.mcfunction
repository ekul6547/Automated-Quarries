function bores:construct/start


scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 2
scoreboard players set #bores.construct.level const 1
scoreboard players set #bores.construct.bridge const 4

scoreboard players set #bores.construct.r const 25
scoreboard players set #bores.construct.g const 150
scoreboard players set #bores.construct.b const 195

function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Cold Tunnel Bore","italic":false,"color":"blue"}'
function bores:construct/end