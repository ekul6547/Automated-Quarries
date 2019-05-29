execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"}.tag{CustomModelData:101} run function quarry:items/drill/storepower
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"}.tag{CustomModelData:101,Damage:1560} run function quarry:items/drill/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"}.tag{CustomModelData:101,Damage:1558} run function quarry:items/drill/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"}.tag{CustomModelData:101,Damage:1559} run function quarry:items/drill/replace
execute as @a if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"}.tag{CustomModelData:102} run effect give @s minecraft:mining_fatigue 1 4 true