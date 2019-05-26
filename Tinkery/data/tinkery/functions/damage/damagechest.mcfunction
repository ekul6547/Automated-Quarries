#tellraw @s {"text":"Block break"}
function tinkery:rd

execute store result score #tinkery t_dum0 run data get entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute store result score #tinkery t_dum1 run data get entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount

execute if data entity @s Inventory[{Slot:102b}] store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:102b}].tag.Tinkery.itemdur

#Tool types
#scoreboard players operation #tinkery t_dum5 = @s t_damagetaken
#scoreboard players set #tinkery t_dum6 2
#scoreboard players operation #tinkery t_dum5 %= #tinkery t_dum6
execute if score @s t_elytra matches 1.. run scoreboard players set @s t_elytra 0
scoreboard players add #tinkery t_dum5 1

scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum5

execute store result entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0
function tinkery:damage/damagebar
execute store result entity @s Inventory[{Slot:102b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2