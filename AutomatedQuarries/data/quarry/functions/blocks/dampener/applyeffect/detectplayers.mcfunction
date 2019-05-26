#Do for all players within 48 blocks
gamerule sendCommandFeedback false
execute as @s run function lapis:util/savepos
execute as @s run function quarry:blocks/dampener/applyeffect/playerpos
tag @a[scores={q_d_X=-50..50,q_d_Z=-50..50}] add q_dampen_queue
execute as @s at @s run function quarry:blocks/dampener/applyeffect/testplayers
gamerule sendCommandFeedback true