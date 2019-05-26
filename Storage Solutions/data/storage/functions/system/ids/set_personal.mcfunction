#Run as player
execute as @s at @s positioned ~ ~-1.5 ~ run scoreboard players operation @s s_id = @e[tag=s_Controller,distance=..1,sort=nearest,limit=1] s_id
tellraw @s ["",{"text":"\nPersonal id assigned to #"},{"score":{"name":"@s","objective":"s_id"}}]