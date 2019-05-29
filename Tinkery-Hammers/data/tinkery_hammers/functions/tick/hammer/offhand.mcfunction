function tinkery:rd
execute at @s store result score #tinkery t_dum0 run data get entity @s Items[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute at @s store result score #tinkery t_dum1 run data get entity @s Items[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
execute as @s run function tinkery_hammers:tick/hammer/setup
execute at @s if score #tinkery t_dum0 <= #tinkery t_dum1 store result entity @s Items[{Slot:-106b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute at @s store result score #tinkery t_dum2 run data get entity @s Items[{Slot:-106b}].tag.Tinkery.itemdur
function tinkery:damage/damagebar
execute store result entity @s Items[{Slot:-106b}].tag.Damage int 1 run scoreboard players get #tinkery t_dum2