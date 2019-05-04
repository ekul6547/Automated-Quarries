execute as @e[tag=q_Block,type=minecraft:armor_stand,nbt={Fire:-1s}] run data merge entity @s {Fire:32767}

#WorkBench
schedule function quarry:blocks/workbench/tick 1t

#Quarry
schedule function quarry:blocks/quarry/tick 1t

#Locked Container
schedule function quarry:blocks/lockbox/tick 1t

#Locked Container
schedule function quarry:blocks/charger/tick 1t

#Chunkloader
#I wrote all this code, only to find out at the very end that forceload does not work from datapacks
#Yay
#But the code is all left here for future, but currently does nothing
#schedule function quarry:blocks/chunkloader/tick 1t