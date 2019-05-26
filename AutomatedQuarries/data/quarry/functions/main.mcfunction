execute unless entity @e[tag=q_PEnd] run summon minecraft:area_effect_cloud 0 0 0 {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["q_PEnd","q_kill_uni"]}

execute as @a if score @s QuarryBook matches 1 run function quarry:book/summonmain
execute as @a if score @s QuarryBook matches 2 run function quarry:book/summondamp
scoreboard players enable @a QuarryBook

function quarry:blocks/blockmain
function quarry:armor/armormain
function quarry:items/itemmain