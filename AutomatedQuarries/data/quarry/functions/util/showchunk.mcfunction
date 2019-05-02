#execute as entity chunk in
execute as @s run function quarry:util/savechunk

execute as @s run function quarry:util/chunkarea

execute as @e[tag=q_PDraw,limit=1] run function quarry:util/draw_chunk