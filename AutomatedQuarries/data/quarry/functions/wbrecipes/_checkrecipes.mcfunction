#run as the workbench
#-1 craft compelete, don't check for more
#0 initial craft / craft check failed, try next recipe
#1+ checking recipe

scoreboard players set #system WorkbenchCount 0

#Quarry
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/quarry_test

#Batter
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/battery_test

#Charger
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/charger_test

#Drill
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/drill_test

#Katana
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/katana_test

#Techno armor
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/techno_test

#Techno armor
execute as @s if score #system WorkbenchCount matches 0 run function quarry:wbrecipes/dampener_test