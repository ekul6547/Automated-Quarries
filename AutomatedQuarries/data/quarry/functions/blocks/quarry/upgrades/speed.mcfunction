execute as @s at @s store success score #quarry QuarrySpeed run data get block ~ ~0.5 ~ {Items:[{id:"minecraft:redstone_block"}]}
scoreboard players set @s QuarrySpeed 1
execute as @s if score #quarry QuarrySpeed matches 1.. run function quarry:blocks/quarry/upgrades/speedsize