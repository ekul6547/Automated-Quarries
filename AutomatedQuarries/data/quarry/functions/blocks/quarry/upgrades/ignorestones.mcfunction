execute as @s at @s store success score #quarry QuarryIgnore run data get block ~ ~0.5 ~ {Items:[{id:"minecraft:stonecutter"}]}

execute as @s if score #quarry QuarryIgnore matches 1.. run scoreboard players set @s QuarryIgnore 1
execute as @s unless score #quarry QuarryIgnore matches 1.. run scoreboard players set @s QuarryIgnore 0