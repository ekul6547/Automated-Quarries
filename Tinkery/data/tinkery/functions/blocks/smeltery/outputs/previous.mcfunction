data modify entity @s ArmorItems[0].tag.Smeltery.Outputs prepend from entity @s ArmorItems[0].tag.Smeltery.Outputs[-1]
data remove entity @s ArmorItems[0].tag.Smeltery.Outputs[-1]
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:24b,Count:1b,tag:{display:{Name:"{\"text\":\"Previous Output\"}"},MenuItem:1,CustomModelData:103}}
execute as @s run function tinkery:blocks/smeltery/outputs/show