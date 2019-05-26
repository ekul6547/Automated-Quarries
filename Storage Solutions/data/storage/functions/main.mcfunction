function storage:blocks/blockmain
function storage:items/itemmain

execute as @a run function storage:perplayer

scoreboard players set #storage const 40
scoreboard players operation @e s_time %= #storage const