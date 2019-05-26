execute as @e[tag=s_Terminal_p] at @s run function storage:blocks/terminal/place
execute as @e[tag=s_Terminal,tag=Block] at @s unless block ~ ~0.5 ~ minecraft:barrel run function storage:blocks/terminal/destroy
execute as @e[tag=s_Terminal,tag=Block] at @s run function storage:blocks/terminal/main