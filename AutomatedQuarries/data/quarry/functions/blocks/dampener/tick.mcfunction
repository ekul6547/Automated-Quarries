execute as @e[tag=q_Dampener_p] at @s run function quarry:blocks/dampener/place
execute as @e[tag=q_Dampener] at @s unless block ~ ~0.5 ~ minecraft:obsidian run function quarry:blocks/dampener/testdestroy

execute as @a[tag=q_dampen_request] if score @s q_d_timer matches 2400 run function quarry:blocks/dampener/request/_reject

execute as @a if score @s OwnerOptions matches 1.. run function quarry:blocks/dampener/applyeffect/owneroptions

scoreboard players operation @a q_d_pre = @a q_d_in
scoreboard players set @a q_d_in 0
execute as @e[tag=q_Dampener] run function quarry:blocks/dampener/main
scoreboard players set @a q_d_sneak 0