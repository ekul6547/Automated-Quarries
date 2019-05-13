#Reset Scores
scoreboard players set @s q_d_result 0
scoreboard players set @s q_UUIDMost 1
scoreboard players set @s q_UUIDLeast 1

#Is owner
execute as @s run function quarry:blocks/dampener/joined/_isowner

#If not Owner, check array
#q_d_result set to -1 if owner
#q_d_result gets set to the index of the player in the array
execute as @s if score @s q_d_result matches 0 run function quarry:blocks/dampener/joined/_startcontainsloop