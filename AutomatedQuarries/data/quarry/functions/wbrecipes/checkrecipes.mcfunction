#run as the workbench
#-1 craft compelete, don't check for more
#0 initial craft / craft check failed, try next recipe
#1+ checking recipe

scoreboard players set #system WorkbenchCount 0

#Quarry
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/craft_quarry

#Lockbox
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/craft_lockbox

execute as @s at @s if score #system WorkbenchCount matches -1 run function quarry:blocks/workbench/clear