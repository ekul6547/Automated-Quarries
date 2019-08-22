#mining

function bores:ai
function bores:bore/while_active/mine/loot
scoreboard players set #bores.hasmined const 1
function bores:ai

execute if score @s bores.tele matches 1 run function bores:bore/while_active/mine/teleitem

function bores:ai
setblock ~ ~ ~ minecraft:air destroy
function bores:ai
kill @e[type=minecraft:item,scores={bores.age=1}]