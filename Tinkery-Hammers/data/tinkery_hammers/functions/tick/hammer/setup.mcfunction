execute as @s run function lapis:util/look/lookat

scoreboard players set #tinkeryhammer const 1
execute unless score @s prelookX = @s lookX run scoreboard players operation #tinkery t_dum4 > #tinkeryhammer const
execute unless score @s prelookY = @s lookY run scoreboard players operation #tinkery t_dum4 > #tinkeryhammer const
execute unless score @s prelookZ = @s lookZ run scoreboard players operation #tinkery t_dum4 > #tinkeryhammer const

execute store result entity @e[tag=q_PDraw,limit=1] Pos[0] double 1 run scoreboard players get @s lookX
execute store result entity @e[tag=q_PDraw,limit=1] Pos[1] double 1 run scoreboard players get @s lookY
execute store result entity @e[tag=q_PDraw,limit=1] Pos[2] double 1 run scoreboard players get @s lookZ

execute as @s run function tinkery_hammers:tick/hammer/facing

execute at @e[tag=q_PDraw,limit=1] if score #tinkery t_dum4 matches 1.. if score #tinkery t_dum5 matches 1 run function tinkery_hammers:tick/hammer/shownorth
execute at @e[tag=q_PDraw,limit=1] if score #tinkery t_dum4 matches 1.. if score #tinkery t_dum5 matches 2 run function tinkery_hammers:tick/hammer/showeast
execute at @e[tag=q_PDraw,limit=1] if score #tinkery t_dum4 matches 1.. if score #tinkery t_dum5 matches 3 run function tinkery_hammers:tick/hammer/showup

execute if score #tinkery t_dum5 matches 1.. store result entity @e[tag=q_PDraw,limit=1] Pos[0] double 1 run scoreboard players get @s prelookX
execute if score #tinkery t_dum5 matches 1.. store result entity @e[tag=q_PDraw,limit=1] Pos[1] double 1 run scoreboard players get @s prelookY
execute if score #tinkery t_dum5 matches 1.. store result entity @e[tag=q_PDraw,limit=1] Pos[2] double 1 run scoreboard players get @s prelookZ

execute at @e[tag=q_PDraw,limit=1] unless block ~ ~ ~ minecraft:air run scoreboard players set #tinkery t_dum5 0

execute at @e[tag=q_PDraw,limit=1] if score @s t_tool_used matches 1.. if score #tinkery t_dum5 matches 1 run function tinkery_hammers:tick/hammer/minenorth
execute at @e[tag=q_PDraw,limit=1] if score @s t_tool_used matches 1.. if score #tinkery t_dum5 matches 2 run function tinkery_hammers:tick/hammer/mineeast
execute at @e[tag=q_PDraw,limit=1] if score @s t_tool_used matches 1.. if score #tinkery t_dum5 matches 3 run function tinkery_hammers:tick/hammer/mineup