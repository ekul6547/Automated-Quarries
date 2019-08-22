function bores:construct/start
scoreboard players set #bores.construct.r const 128
scoreboard players set #bores.construct.g const 128
scoreboard players set #bores.construct.b const 128
function bores:construct/create
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.display.Name set value '{"text":"Petty Tunnel Bore","italic":false,"color":"dark_gray"}'
function bores:construct/end