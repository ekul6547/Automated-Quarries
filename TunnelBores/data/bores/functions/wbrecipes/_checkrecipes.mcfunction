#run as the workbench
#-1 craft compelete, don't check for more
#0 initial craft / craft check failed, try next recipe
#1+ checking recipe

scoreboard players set #system WorkbenchCount 0
#Tunnel Bore
execute as @s if score #system WorkbenchCount matches 0 run function #bores_recipes:bore_craft