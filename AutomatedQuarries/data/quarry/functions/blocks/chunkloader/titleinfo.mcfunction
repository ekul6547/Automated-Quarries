scoreboard players set #chunk q_const 20
scoreboard players operation @s q_Seconds = @s q_Age
scoreboard players operation @s q_Seconds /= #chunk q_const
title @a[distance=..4] actionbar ["",{"text":"Remaining Time: "},{"score":{"name":"@s","objective":"q_Seconds"}},{"text":"   Loading Chunk: "},{"score":{"name":"@s","objective":"q_Loaded"}}]