function tinkery:rd

#This part will remove 1 durbaility everytime it's called
execute at @s store result score #tinkery t_dum0 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute at @s store result score #tinkery t_dum1 run data get entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount

scoreboard players remove #tinkery t_dum0 1

execute at @s if score #tinkery t_dum0 <= #tinkery t_dum1 store result entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute at @s if score #tinkery t_dum0 > #tinkery t_dum1 store result entity @s Inventory[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum1

#This bit of code will convert tinkery custom durability to the Damage bar
execute at @s store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.itemdur
function tinkery:damage/damagebar
execute store result entity @s Inventory[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2

#Gets the current level of the addon
execute at @s if score #tinkery t_dum0 matches 1.. store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:-106b}].tag.Tinkery.Addons[{id:"speed_effect"}].level

execute if score #tinkery t_dum2 matches 1 run effect give @s minecraft:speed 5 0 true
execute if score #tinkery t_dum2 matches 2 run effect give @s minecraft:speed 5 1 true
execute if score #tinkery t_dum2 matches 3 run effect give @s minecraft:speed 5 2 true
execute if score #tinkery t_dum2 matches 4 run effect give @s minecraft:speed 5 3 true
execute if score #tinkery t_dum2 matches 5 run effect give @s minecraft:speed 5 4 true
execute if score #tinkery t_dum2 matches 6 run effect give @s minecraft:speed 5 5 true
execute if score #tinkery t_dum2 matches 7 run effect give @s minecraft:speed 5 6 true
execute if score #tinkery t_dum2 matches 8 run effect give @s minecraft:speed 5 7 true
execute if score #tinkery t_dum2 matches 9 run effect give @s minecraft:speed 5 8 true
execute if score #tinkery t_dum2 matches 10.. run effect give @s minecraft:speed 5 9 true