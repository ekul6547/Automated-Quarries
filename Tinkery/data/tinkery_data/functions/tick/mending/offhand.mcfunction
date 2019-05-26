function tinkery:rd
execute at @s store result score #tinkery t_dum0 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute at @s store result score #tinkery t_dum1 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
execute at @s store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.Addons[{id:"mending"}].level

scoreboard players set #tinkery const 2
scoreboard players operation #tinkery t_dum2 *= #tinkery const
execute if score #tinkery t_dum0 < #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 += #tinkery t_dum2

execute at @s if score #tinkery t_dum0 <= #tinkery t_dum1 store result entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute at @s if score #tinkery t_dum0 > #tinkery t_dum1 store result entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum1

execute at @s store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.itemdur
function tinkery:damage/damagebar
execute store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2