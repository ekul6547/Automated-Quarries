execute as @e[tag=q_LockBox_p] at @s run function lockbox:blocks/lockbox/place
execute as @e[tag=q_LockBox] at @s unless block ~ ~0.5 ~ minecraft:barrel run function lockbox:blocks/lockbox/destroy
execute as @e[tag=q_LockBox] run function lockbox:blocks/lockbox/main