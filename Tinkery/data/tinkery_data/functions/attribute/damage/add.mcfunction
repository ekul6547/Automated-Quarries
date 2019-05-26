function tinkery:rd

execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].matBuild
execute at @s store result score #tinkery t_dum1 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].next
execute at @s store result score #tinkery t_dum2 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].level

scoreboard players add #tinkery t_dum0 1
#Per level
scoreboard players set #tinkery t_dum3 2
#Increase level
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players add #tinkery t_dum2 1
#Per * new level
scoreboard players operation #tinkery t_dum3 *= #tinkery t_dum2
#Subtract new level cost
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].matBuild int 1 run scoreboard players get #tinkery t_dum0
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].level int 1 run scoreboard players get #tinkery t_dum2
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"damage"}].next int 1 run scoreboard players get #tinkery t_dum3

scoreboard players set #tinkery const 100
#subtract -2.4 * 100 
execute at @s store result score #tinkery t_dum4 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.startingdam 100
scoreboard players set #tinkery t_dum5 8
scoreboard players operation #tinkery t_dum2 *= #tinkery const
scoreboard players operation #tinkery t_dum2 /= #tinkery t_dum5
scoreboard players operation #tinkery t_dum2 += #tinkery t_dum4

execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.AttributeModifiers[{AttributeName:"generic.attackDamage"}].Amount float 0.01 run scoreboard players get #tinkery t_dum2

scoreboard players set @s t_output 1