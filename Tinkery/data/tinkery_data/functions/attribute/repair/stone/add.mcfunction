function tinkery:rd

execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute at @s store result score #tinkery t_dum1 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount

execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players set #tinkery t_dum4 1

#Item repair amount
scoreboard players add #tinkery t_dum0 192
#Subtract new level cost
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 = #tinkery t_dum1

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0

execute at @s store result score #tinkery t_dum2 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.itemdur
function tinkery:damage/damagebar
execute store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2

execute if score #tinkery t_dum4 matches 0 run scoreboard players set @s t_output 1