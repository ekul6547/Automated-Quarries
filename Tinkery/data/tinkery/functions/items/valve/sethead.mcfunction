replaceitem entity @p armor.head minecraft:leather_horse_armor{display:{Name:"{\"text\":\"Valve\",\"italic\":false}",color:0},CustomModelData:1000,Valve:1b} 1
data modify entity @p Inventory[{Slot:103b}].tag.display.color set from entity @s Item.tag.display.color
kill @s