#Move in dirction player is facing (north east south west)
execute store result score @s actX run data get entity @s Pos[0] 16
execute store result score @s actY run data get entity @s Pos[1] 16
execute store result score @s actZ run data get entity @s Pos[2] 16
scoreboard players add @s actY 8
execute if score #step direction matches 0 run scoreboard players remove @s actZ 16
execute if score #step direction matches 1 run scoreboard players add @s actX 16
execute if score #step direction matches 2 run scoreboard players add @s actZ 16
execute if score #step direction matches 3 run scoreboard players remove @s actX 16
execute store result entity @s Pos[0] double 0.0625 run scoreboard players get @s actX
execute store result entity @s Pos[1] double 0.0625 run scoreboard players get @s actY
execute store result entity @s Pos[2] double 0.0625 run scoreboard players get @s actZ

scoreboard players set #step const 1
#if block ~ ~ ~ can step up and ~ ~1 ~ is not solid
execute at @s unless block ~ ~ ~ #lapis:no_step_blocks if block ~ ~0.8 ~ #lapis:no_step_blocks if block ~ ~1.8 ~ #lapis:no_step_blocks run scoreboard players set #step const 0