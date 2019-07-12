data modify entity @s ArmorItems[0].tag.Smeltery.Outputs append from entity @s ArmorItems[0].tag.Smeltery.Outputs[0]
data remove entity @s ArmorItems[0].tag.Smeltery.Outputs[0]
data modify block ~ ~0.5 ~ Items append value {id:"minecraft:barrier",Slot:26b,Count:1b,tag:{display:{Name:"{\"text\":\"Next Output\"}"},MenuItem:1,CustomModelData:104}}
execute as @s run function tinkery:blocks/smeltery/outputs/show