#RUN as player
scoreboard players operation #storagechange s_id = @s SystemID
execute at @s positioned ~ ~-1.5 ~ as @e[tag=s_suggestID,distance=..1,sort=nearest,limit=1] if entity @s[tag=s_Controller] run function storage:system/ids/set_id
execute at @s positioned ~ ~-1.5 ~ as @e[tag=s_suggestID,distance=..1,sort=nearest,limit=1] unless entity @s[tag=s_Controller] run function storage:system/ids/set_control