tag @s add q_dampen_owner
execute as @a[tag=q_dampen_request] if score @s q_d_current = @a[tag=q_dampen_owner,limit=1] q_d_current run function quarry:blocks/dampener/request/_grant
tag @s remove q_dampen_owner
execute as @s run function quarry:blocks/dampener/request/_reset