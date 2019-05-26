execute as @s at @s run data modify block ~ ~0.5 ~ Lock set from entity @e[tag=master_lock,limit=1] CustomName
data modify entity @s ArmorItems[3].tag.CustomModelData set value 103