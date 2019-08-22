#RUN AS SYSTEM BLOCK NOT CONTROLLER
execute as @s at @s run function storage:system/menu/close_menu
scoreboard players operation @s s_id = #storagechange s_id
execute as @s if score @s s_id matches 1.. run tellraw @a[distance=..3] ["",{"text":"\nAssgined to system #"},{"score":{"name":"@s","objective":"s_id"}}]
scoreboard players set @s s_server 1

execute as @s if entity @s[tag=s_Server] if score @s s_id matches 1.. run function storage:system/ids/server_id