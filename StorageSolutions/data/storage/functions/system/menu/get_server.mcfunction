#RUN AS TERMINAL
tag @e[tag=SS_SERVER] remove SS_SERVER
scoreboard players operation #storage s_count = @s s_id
scoreboard players operation #storage s_server = @s s_server
execute as @e[tag=s_Server] if score @s s_server = #storage s_server if score @s s_id = #storage s_count run tag @s add SS_SERVER