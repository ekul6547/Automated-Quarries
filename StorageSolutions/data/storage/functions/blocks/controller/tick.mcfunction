execute as @e[tag=s_Controller_p] at @s run function storage:blocks/controller/place
execute as @e[tag=s_Controller] at @s unless block ~ ~0.5 ~ minecraft:magma_block run function storage:blocks/controller/destroy
execute as @e[tag=s_Controller] run function storage:blocks/controller/main