#run as the workbench
#-1 craft compelete, don't check for more
#0 initial craft / craft check failed, try next recipe
#1+ checking recipe

scoreboard players set #system WorkbenchCount 0
#Controller
execute as @s if score #system WorkbenchCount matches 0 run function storage:wbrecipes/controller_test
#Terminal
execute as @s if score #system WorkbenchCount matches 0 run function storage:wbrecipes/terminal_test
#Server
execute as @s if score #system WorkbenchCount matches 0 run function storage:wbrecipes/server_test
#Wireless
execute as @s if score #system WorkbenchCount matches 0 run function storage:wbrecipes/wireless_test