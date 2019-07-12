data modify entity @s ArmorItems[0].tag.Smeltery.TempItem set from block ~ ~-1 ~ Items[0]
data modify entity @s ArmorItems[0].tag.Smeltery.TempItem.Slot set value 18b
data modify block ~ ~ ~ Items append from entity @s ArmorItems[0].tag.Smeltery.TempItem
data remove block ~ ~-1 ~ Items[0]