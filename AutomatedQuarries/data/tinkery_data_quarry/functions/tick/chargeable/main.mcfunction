function tinkery:rd
execute store result score #tinkery t_dum2 run data get entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"tinkery.durability"}].Amount
execute store result entity @s SelectedItem.tag.Power.current int 1 run scoreboard players get #tinkery t_dum2
execute store result score #tinkery t_dum2 run data get entity @s SelectedItem.tag.AttributeModifiers[{AttributeName:"tinkery.maxDurability"}].Amount
execute store result entity @s SelectedItem.tag.Power.max int 1 run scoreboard players get #tinkery t_dum2