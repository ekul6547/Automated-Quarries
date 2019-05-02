execute as @e[tag=q_LockBox_p] at @s run function quarry:blocks/lockbox/place
execute as @e[tag=q_LockBox] at @s unless block ~ ~0.5 ~ minecraft:barrel run function quarry:blocks/lockbox/destroy
execute if entity @e[tag=test_string,type=minecraft:item_frame] if score #lock QuarryCount matches ..0 run function quarry:blocks/lockbox/lock/settokill
execute as @e[tag=q_LockBox] run function quarry:blocks/lockbox/main