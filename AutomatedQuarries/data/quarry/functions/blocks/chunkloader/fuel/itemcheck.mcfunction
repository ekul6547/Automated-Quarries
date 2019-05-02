execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ender_eye",Count:1},Tags:["q_end_eye_item"]}
execute at @s store success score #chunk q_const run data modify entity @e[tag=q_end_eye_item,limit=1] Item.id set from block ~ ~0.5 ~ Items[0].id
execute as @s if score #chunk q_const matches ..0 run function quarry:blocks/chunkloader/fuel/consume
kill @e[tag=q_end_eye_item]