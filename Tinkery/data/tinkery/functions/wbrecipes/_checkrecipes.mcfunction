#run as the workbench
#-1 craft compelete, don't check for more
#0 initial craft / craft check failed, try next recipe
#1+ checking recipe

scoreboard players set #system WorkbenchCount 0
#Tinkery
execute as @s if score #system WorkbenchCount matches 0 run function tinkery:wbrecipes/blueprint_test
execute as @s if score #system WorkbenchCount matches 0 run function tinkery:wbrecipes/blueprinter_test
execute as @s if score #system WorkbenchCount matches 0 run function tinkery:wbrecipes/constructor_test
execute as @s if score #system WorkbenchCount matches 0 run function tinkery:wbrecipes/modifier_test