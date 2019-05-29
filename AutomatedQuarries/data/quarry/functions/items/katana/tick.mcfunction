execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:101} run function quarry:items/katana/storepower
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:101,Damage:1560} run function quarry:items/katana/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:101,Damage:1559} run function quarry:items/katana/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:101,Damage:1558} run function quarry:items/katana/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:102} run effect give @s minecraft:mining_fatigue 1 4 true
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_sword"}.tag{CustomModelData:102} run effect give @s minecraft:weakness 1 4 true