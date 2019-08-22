function tinkery:rd
execute store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute store result entity @s Inventory[{Slot:103b}].tag.Power.current int 1 run scoreboard players get #tinkery t_dum2
execute store result score #tinkery t_dum2 run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
execute store result entity @s Inventory[{Slot:103b}].tag.Power.max int 1 run scoreboard players get #tinkery t_dum2