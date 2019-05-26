execute as @e[tag=s_Server_p] at @s run function storage:blocks/server/place
execute as @e[tag=s_Server] at @s unless block ~ ~0.5 ~ minecraft:barrel run function storage:blocks/server/destroy
execute as @e[tag=s_Server] run function storage:blocks/server/main