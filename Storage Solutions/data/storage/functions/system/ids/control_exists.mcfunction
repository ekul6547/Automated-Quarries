scoreboard players set @s s_control 0
scoreboard players set #storage s_count 0
scoreboard players operation #storage s_drive = @s s_id
execute at @s as @e[tag=s_Controller] if score @s s_id = #storage s_drive run scoreboard players add #storage s_count 1
execute as @s if score #storage s_count matches 1 run scoreboard players set @s s_control 1

execute as @s at @s if score #storage s_count matches 0 run title @a[distance=..1.5] actionbar ["",{"text":"No System found within range for id #","color":"red"},{"score":{"name":"@s","objective":"s_id"}}]
execute as @s at @s if score #storage s_count matches 2.. run title @a[distance=..1.5] actionbar ["",{"text":"Too many systems with id #","color":"red"},{"score":{"name":"@s","objective":"s_id"}}]