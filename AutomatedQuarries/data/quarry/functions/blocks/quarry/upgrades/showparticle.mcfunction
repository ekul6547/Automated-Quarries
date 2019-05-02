execute as @s at @s store success score #quarry QuarryParticles run data get block ~ ~0.5 ~ {Items:[{id:"minecraft:torch"}]}

execute as @s if score #quarry QuarryParticles matches 1.. run scoreboard players set @s QuarryParticles 1
execute as @s unless score #quarry QuarryParticles matches 1.. run scoreboard players set @s QuarryParticles 0