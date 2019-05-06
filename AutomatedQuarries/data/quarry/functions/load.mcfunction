tellraw @a[gamemode=creative] ["",{"text":"Loaded [Automated Quarries]","color":"white"},{"text":" by Re:Lapis","color":"gray"}]

#General X,Y,Z for current position
scoreboard objectives add q_X dummy
scoreboard objectives add q_Y dummy
scoreboard objectives add q_Z dummy
scoreboard objectives add q_chunkX dummy
scoreboard objectives add q_chunkY dummy
scoreboard objectives add q_chunkZ dummy

#Changeable constant used for math
scoreboard objectives add q_const dummy

scoreboard objectives add QuarryBook trigger

scoreboard objectives add q_Age dummy
scoreboard objectives add q_direction dummy

scoreboard objectives add q_sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add q_timeup minecraft.custom:minecraft.time_since_death

scoreboard objectives add QuarrySlotCount dummy
scoreboard objectives add WorkbenchCount dummy
scoreboard objectives add QuarryCount dummy
scoreboard objectives add QuarryColor dummy

#Quarry Upgrades
scoreboard objectives add QuarryFortune dummy
scoreboard objectives add QuarryMineStone dummy
scoreboard objectives add QuarryParticles dummy
scoreboard objectives add QuarrySpeed dummy
scoreboard objectives add QuarrySpeedSize dummy
scoreboard objectives add QuarrySlimeSize dummy
scoreboard objectives add QuarryIgnore dummy

#Min and max area
scoreboard objectives add qmin_x dummy
scoreboard objectives add qmin_z dummy
scoreboard objectives add qmax_x dummy
scoreboard objectives add qmax_z dummy
#Actual block position
scoreboard objectives add quarry_x dummy
scoreboard objectives add quarry_y dummy
scoreboard objectives add quarry_z dummy
#The current block to mine
scoreboard objectives add q_mine_x dummy
scoreboard objectives add q_mine_y dummy
scoreboard objectives add q_mine_z dummy
#The place where to deposit loot
scoreboard objectives add q_place_x dummy
scoreboard objectives add q_place_y dummy
scoreboard objectives add q_place_z dummy


#Chunkloader
#This will be q_Age / 60 for display
scoreboard objectives add q_Seconds dummy
scoreboard objectives add q_Loaded dummy

#Lock
scoreboard objectives add q_UUIDMost dummy
scoreboard objectives add q_UUIDLeast dummy

#Constants
scoreboard players set #system q_Loaded 1
scoreboard players set #quarry q_Age 40
scoreboard players set #quarry QuarrySpeedSize 8
#How many ticks added per ender eye - default 2400 (2 minutes)
scoreboard players set #chunk q_Age 2400
scoreboard players set #lock QuarryCount 0
scoreboard players set #drill qmax_x 1561