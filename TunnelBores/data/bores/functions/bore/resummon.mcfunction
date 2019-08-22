function bores:ai
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:stone",Count:1b}}
function bores:ai
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item set from entity @s ArmorItems[3].tag.BoreStats.Item
data modify entity @e[type=item,scores={bores.age=1},limit=1] Item.tag.EntityTag.ArmorItems[3].tag.BoreStats.Item set from entity @s ArmorItems[3].tag.BoreStats.Item