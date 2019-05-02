#Execute as q_PDraw
execute store result entity @s Pos[0] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_mine_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_mine_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @e[tag=q_Current,limit=1] q_mine_z

execute as @s run function quarry:blocks/quarry/mine/checkignore

execute as @s if score #system QuarryCount matches 1 run function quarry:blocks/quarry/mine/mine