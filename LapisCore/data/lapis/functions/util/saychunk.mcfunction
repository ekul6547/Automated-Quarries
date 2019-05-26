execute as @s run function lapis:util/showchunk

tellraw @s ["",{"text":"X: "},{"score":{"name":"@s","objective":"chunkX"}},{"text":" Y: "},{"score":{"name":"@s","objective":"chunkY"}},{"text":" Z: "},{"score":{"name":"@s","objective":"chunkZ"}}]
tellraw @s ["",{"text":"X: "},{"score":{"name":"#chunk","objective":"X"}},{"text":" Y: "},{"score":{"name":"#chunk","objective":"chunkX"}}]