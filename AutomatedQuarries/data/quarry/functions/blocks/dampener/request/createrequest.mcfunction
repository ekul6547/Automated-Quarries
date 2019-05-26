#Request ID
scoreboard players add #damp QuarryCount 1

execute at @s positioned ~ ~1 ~ run tag @p add q_dampen_request
execute at @s run scoreboard players operation @p q_d_current = #damp QuarryCount

tag @s add q_dampen_data
execute as @a[tag=!q_dampen_request] run function quarry:blocks/dampener/request/findowner
tag @s remove q_dampen_data


scoreboard players set #damp q_d_result 0
#Find Owner count
execute as @a[tag=!q_dampen_request] if score @s q_d_current = #damp QuarryCount run scoreboard players add #damp q_d_result 1

#If #damp q_d_result matches 1 then owner online.
#matches 0 means no owner
#matches 2.. means invalid owner count

#If owner is not online
execute at @s if score #damp q_d_result matches 0 run tellraw @p {"text":"Owner not found. Request Denied.","color":"red"}
execute at @s if score #damp q_d_result matches 0 as @p run function quarry:blocks/dampener/request/_reset

#If owner count is invalid
execute at @s if score #damp q_d_result matches 2.. run tellraw @p {"text":"Invalid owner count. Request Denied.","color":"red"}
execute if score #damp q_d_result matches 2.. as @a if score @s q_d_current = #damp QuarryCount run scoreboard players set @s q_d_current 0

#If owner count is 1
execute at @s if score #damp q_d_result matches 1 as @a[tag=!q_dampen_request] if score @s q_d_current = #damp QuarryCount run scoreboard players enable @s RequestTrigger
execute at @s if score #damp q_d_result matches 1 as @a[tag=!q_dampen_request] if score @s q_d_current = #damp QuarryCount run tellraw @s ["",{"text":"Request from player "},{"selector":"@p"},{"text":" to build\n     "},{"text":"[ACCEPT]","color":"green","clickEvent":{"action":"run_command","value":"/trigger RequestTrigger set 1"}},{"text":"    "},{"text":"[REJECT]","color":"red","clickEvent":{"action":"run_command","value":"/trigger RequestTrigger set 2"}}]

execute at @s positioned ~ ~1 ~ run scoreboard players set @p q_d_timer 0