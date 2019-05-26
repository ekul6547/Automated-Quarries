scoreboard players operation @s prelookX = @s lookX
scoreboard players operation @s prelookY = @s lookY
scoreboard players operation @s prelookZ = @s lookZ

scoreboard players set #look lookSet 0
scoreboard players set #look lookCount 0

execute at @s anchored eyes run tp @e[tag=q_PDraw,limit=1] ~ ~ ~
#tp @e[tag=DEBUG] @e[tag=q_PDraw,limit=1]
execute as @s at @s rotated as @s anchored eyes run tp @e[tag=q_PDraw,limit=1] ^ ^ ^0.1

tag @s add l_looker
execute as @e[tag=q_PDraw,limit=1] at @s run function lapis:util/look/lookloop
tag @s remove l_looker
execute as @e[tag=q_PDraw,limit=1] at @s rotated as @p[tag=l_looker] run tp @s ^ ^ ^0.5

scoreboard players operation @s lookSet = #look lookSet
execute if score #look lookSet matches 1 as @s store result score @s lookX run data get entity @e[tag=q_PDraw,limit=1] Pos[0]
execute if score #look lookSet matches 1 as @s store result score @s lookY run data get entity @e[tag=q_PDraw,limit=1] Pos[1]
execute if score #look lookSet matches 1 as @s store result score @s lookZ run data get entity @e[tag=q_PDraw,limit=1] Pos[2]

#title @s actionbar ["",{"score":{"name":"@s","objective":"lookX"}},{"score":{"name":"@s","objective":"lookY"}},{"score":{"name":"@s","objective":"lookZ"}}]
tp @e[tag=q_PDraw] 0 0 0