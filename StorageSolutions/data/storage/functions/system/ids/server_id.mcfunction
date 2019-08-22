#RUN AS SERVER
scoreboard players set @s s_server 0
scoreboard players set #storage s_count 0
scoreboard players operation #storage s_drive = @s s_id
execute as @e[tag=s_Server] if score @s s_id = #storage s_drive run scoreboard players operation #storage s_count > @s s_server
scoreboard players operation @s s_server = #storage s_count
scoreboard players add @s s_server 1
execute as @s if score @s s_server matches 1.. run tellraw @a[distance=..3] ["",{"text":"Server assigned id #"},{"score":{"name":"@s","objective":"s_server"}}]
execute as @s run function storage:blocks/server/unlock