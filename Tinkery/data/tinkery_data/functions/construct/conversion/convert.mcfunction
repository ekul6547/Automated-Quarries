execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag merge value {display:{Lore:['{"text":"Tinker\'s Enabled","color":"green"}']}}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag merge value {Tinkery:{Material:"unknown",Type:"unknown",Addons:[],itemdur:0}}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers append value {AttributeName:"tinkery.maxDurability",Name:"Max Durability",Slot:"mainhand",Amount:0,Operation:0,UUIDMost:36630,UUIDLeast:156724}
execute at @s run data modify block ~ ~0.6 ~ Items[{Slot:16b}].tag.AttributeModifiers append value {AttributeName:"tinkery.durability",Name:"Durability",Slot:"mainhand",Amount:0,Operation:0,UUIDMost:36630,UUIDLeast:156724}

#Wood
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:wooden_pickaxe"}] run function tinkery_data:construct/conversion/tools/wooden_pickaxe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:wooden_shovel"}] run function tinkery_data:construct/conversion/tools/wooden_shovel
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:wooden_hoe"}] run function tinkery_data:construct/conversion/tools/wooden_hoe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:wooden_axe"}] run function tinkery_data:construct/conversion/tools/wooden_axe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:wooden_sword"}] run function tinkery_data:construct/conversion/tools/wooden_sword

#Gold
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:golden_pickaxe"}] run function tinkery_data:construct/conversion/tools/golden_pickaxe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:golden_shovel"}] run function tinkery_data:construct/conversion/tools/golden_shovel
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:golden_hoe"}] run function tinkery_data:construct/conversion/tools/golden_hoe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:golden_axe"}] run function tinkery_data:construct/conversion/tools/golden_axe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:golden_sword"}] run function tinkery_data:construct/conversion/tools/golden_sword

#Stone
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:stone_pickaxe"}] run function tinkery_data:construct/conversion/tools/stone_pickaxe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:stone_shovel"}] run function tinkery_data:construct/conversion/tools/stone_shovel
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:stone_hoe"}] run function tinkery_data:construct/conversion/tools/stone_hoe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:stone_axe"}] run function tinkery_data:construct/conversion/tools/stone_axe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:stone_sword"}] run function tinkery_data:construct/conversion/tools/stone_sword

#Iron
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:iron_pickaxe"}] run function tinkery_data:construct/conversion/tools/iron_pickaxe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:iron_shovel"}] run function tinkery_data:construct/conversion/tools/iron_shovel
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:iron_hoe"}] run function tinkery_data:construct/conversion/tools/iron_hoe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:iron_axe"}] run function tinkery_data:construct/conversion/tools/iron_axe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:iron_sword"}] run function tinkery_data:construct/conversion/tools/iron_sword

#Diamond
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:diamond_pickaxe"}] run function tinkery_data:construct/conversion/tools/diamond_pickaxe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:diamond_shovel"}] run function tinkery_data:construct/conversion/tools/diamond_shovel
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:diamond_hoe"}] run function tinkery_data:construct/conversion/tools/diamond_hoe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:diamond_axe"}] run function tinkery_data:construct/conversion/tools/diamond_axe
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:diamond_sword"}] run function tinkery_data:construct/conversion/tools/diamond_sword

#other
execute at @s if data block ~ ~0.6 ~ Items[{Slot:16b,id:"minecraft:trident"}] run function tinkery_data:construct/conversion/tools/trident