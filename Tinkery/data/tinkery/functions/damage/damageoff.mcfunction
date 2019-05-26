#tellraw @s {"text":"Block break"}
function tinkery:rd

execute store result score #tinkery t_dum0 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute store result score #tinkery t_dum1 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount

execute if data entity @s Inventory[{Slot:-106b}] store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.itemdur

#Tool types
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:wooden_pickaxe"}] run scoreboard players operation #tinkery t_dum5 += @s t_pick_wood
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:stone_pickaxe"}] run scoreboard players operation #tinkery t_dum5 += @s t_pick_stone
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_pickaxe"}] run scoreboard players operation #tinkery t_dum5 += @s t_pick_iron
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_pickaxe"}] run scoreboard players operation #tinkery t_dum5 += @s t_pick_gold
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:diamond_pickaxe"}] run scoreboard players operation #tinkery t_dum5 += @s t_pick_diamond

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:wooden_shovel"}] run scoreboard players operation #tinkery t_dum5 += @s t_shovel_wood
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:stone_shovel"}] run scoreboard players operation #tinkery t_dum5 += @s t_shovel_stone
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_shovel"}] run scoreboard players operation #tinkery t_dum5 += @s t_shovel_iron
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_shovel"}] run scoreboard players operation #tinkery t_dum5 += @s t_shovel_gold
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:diamond_shovel"}] run scoreboard players operation #tinkery t_dum5 += @s t_shovel_diamond

#Above shouldn't melee
#execute if score #tinkery t_dum2 matches 1.. if score @s t_damagedealt matches 1.. run scoreboard players remove #tinkery t_dum5 1

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:wooden_axe"}] run scoreboard players operation #tinkery t_dum5 += @s t_axe_wood
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:stone_axe"}] run scoreboard players operation #tinkery t_dum5 += @s t_axe_stone
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_axe"}] run scoreboard players operation #tinkery t_dum5 += @s t_axe_iron
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_axe"}] run scoreboard players operation #tinkery t_dum5 += @s t_axe_gold
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:diamond_axe"}] run scoreboard players operation #tinkery t_dum5 += @s t_axe_diamond

#Above can break blocks
#execute if score #tinkery t_dum2 matches 0 if score @s t_damagedealt matches 0 run scoreboard players remove #tinkery t_dum5 1

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:wooden_sword"}] run scoreboard players operation #tinkery t_dum5 += @s t_sword_wood
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:stone_sword"}] run scoreboard players operation #tinkery t_dum5 += @s t_sword_stone
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:iron_sword"}] run scoreboard players operation #tinkery t_dum5 += @s t_sword_iron
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:gold_sword"}] run scoreboard players operation #tinkery t_dum5 += @s t_sword_gold
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:diamond_sword"}] run scoreboard players operation #tinkery t_dum5 += @s t_sword_diamond

execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:bow"}] run scoreboard players operation #tinkery t_dum5 += @s t_bow
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow"}] run scoreboard players operation #tinkery t_dum5 += @s t_crossbow
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:trident"}] run scoreboard players operation #tinkery t_dum5 += @s t_trident
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:trident"}] run scoreboard players set @s t_trident 0
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}] run scoreboard players operation #tinkery t_dum5 += @s t_shield
scoreboard players set #tinkery t_dum6 10
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:shield"}] run scoreboard players operation #tinkery t_dum5 /= #tinkery t_dum6

scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum5

execute store result entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0
function tinkery:damage/damagebar
execute store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2