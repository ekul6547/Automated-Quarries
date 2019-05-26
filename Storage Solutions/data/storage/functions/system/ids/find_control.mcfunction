#RUN AS SYSTEM BLOCK NOT CONTROLLER
execute at @s run scoreboard players operation @s s_id = @e[tag=s_Controller,sort=nearest,limit=1,distance=..128] s_id
execute as @s if score @s s_id matches 1.. run tellraw @a[distance=..3] ["",{"text":"\nAssgined to system #"},{"score":{"name":"@s","objective":"s_id"}}]
execute as @s unless score @s s_id matches 1.. run tellraw @a[distance=..3] ["",{"text":"\nNo System found within range"}]
scoreboard players set @s s_server 0
scoreboard players set @s s_shulker 0
scoreboard players set @s s_shulker_pre 0

execute as @s if entity @s[tag=s_Server] if score @s s_id matches 1.. run function storage:system/ids/server_id