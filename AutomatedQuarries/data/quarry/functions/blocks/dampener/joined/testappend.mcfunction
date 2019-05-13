execute at @s run tag @p add array_test
execute as @s at @s run function quarry:blocks/dampener/joined/contains
execute if score @s q_d_result matches -1 as @p[tag=array_test] run function quarry:blocks/dampener/applyeffect/en_owneroptions
execute if score @s q_d_result matches 1.. run tellraw @p[tag=array_test] {"text":"You already have access to this area."}
execute if score @s q_d_result matches 0 run tellraw @p[tag=array_test] {"text":"You do not have access. Creating request..."}
execute as @s at @s if score @s q_d_result matches 0 if score @p q_d_current matches 0 run function quarry:blocks/dampener/request/createrequest
scoreboard players set @s q_Age 0
tag @a[tag=array_test] remove array_test