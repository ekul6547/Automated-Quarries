execute at @s run data modify block ~ ~0.6 ~ Lock set value "ServerIsLockedAndCannotBeAccessedByPlayers"
scoreboard players set @s s_lock 1
execute as @s at @s run function storage:blocks/server/disable