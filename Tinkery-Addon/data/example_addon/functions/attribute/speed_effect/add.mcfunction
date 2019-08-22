#This function adds on to the current value
#No need to check because checks have been done before this function

function tinkery:rd

#Get the current material amount added on to the item, the next amount required for th enext level, and the current level
#matBuild - how much material has already been put onto the tool. Resets when leveling up
execute at @s store result score #tinkery t_dum0 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].matBuild
#next - how much material is required for the next level
execute at @s store result score #tinkery t_dum1 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].next
#level - the current level of the addon
execute at @s store result score #tinkery t_dum2 run data get block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].level

#Add 1 to the material build-up
scoreboard players add #tinkery t_dum0 1

#The amount of item per level.
scoreboard players set #tinkery t_dum3 32

#If the material build-up is greater than next, add 1 to level
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players add #tinkery t_dum2 1

#Calculate next as the "per level" * "current level"
scoreboard players operation #tinkery t_dum3 *= #tinkery t_dum2
#If level increasing, subtract the original "next" amount from the material build-up
execute if score #tinkery t_dum0 >= #tinkery t_dum1 run scoreboard players operation #tinkery t_dum0 -= #tinkery t_dum1

#Store the altered data
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].matBuild int 1 run scoreboard players get #tinkery t_dum0
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].level int 1 run scoreboard players get #tinkery t_dum2
execute at @s store result block ~ ~0.6 ~ Items[{Slot:11b}].tag.Tinkery.Addons[{id:"speed_effect"}].next int 1 run scoreboard players get #tinkery t_dum3

#Setting this to 1 means output succesful
#Any other tests for addons will not work, and the materials in the GUI will have the stack reduced by 1
scoreboard players set @s t_output 1