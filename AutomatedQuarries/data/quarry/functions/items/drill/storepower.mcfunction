scoreboard players set #quarrypower const 1561
execute as @s store result score #quarrypower q_Age run data get entity @s SelectedItem.tag.Damage
scoreboard players operation #quarrypower const -= #quarrypower q_Age
execute as @s store result entity @s SelectedItem.tag.Power.current int 1 run scoreboard players get #quarrypower const