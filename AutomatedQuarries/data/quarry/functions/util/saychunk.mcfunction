execute as @s run function quarry:util/showchunk

tellraw @s ["",{"text":"X: "},{"score":{"name":"@s","objective":"q_chunkX"}},{"text":" Y: "},{"score":{"name":"@s","objective":"q_chunkY"}},{"text":" Z: "},{"score":{"name":"@s","objective":"q_chunkZ"}}]
tellraw @s ["",{"text":"X: "},{"score":{"name":"#chunk","objective":"q_X"}},{"text":" Y: "},{"score":{"name":"#chunk","objective":"q_chunkX"}}]