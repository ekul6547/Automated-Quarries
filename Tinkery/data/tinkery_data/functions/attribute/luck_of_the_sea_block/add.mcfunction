function tinkery:rd

execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].matBuild
execute at @s store result score #tinkery t_dum1 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].next
execute at @s store result score #tinkery t_dum2 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].level

scoreboard players add #tinkery t_dum0 9
#Per level
scoreboard players set #tinkery t_dum3 64
#Increase level
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players add #tinkery t_dum2 1
#Per * new level
scoreboard players operation #tinkery t_dum3 *= #tinkery t_dum2
#Subtract new level cost
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].matBuild int 1 run scoreboard players get #tinkery t_dum0
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].level int 1 run scoreboard players get #tinkery t_dum2
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"luck_of_the_sea"}].next int 1 run scoreboard players get #tinkery t_dum3

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Enchantments[{id:"minecraft:luck_of_the_sea"}].lvl short 1 run scoreboard players get #tinkery t_dum2

scoreboard players set @s t_output 1