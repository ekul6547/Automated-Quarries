#Changeable constant used for math
scoreboard objectives add q_const dummy
scoreboard objectives add q_Age dummy

scoreboard objectives add QuarryBook trigger

scoreboard objectives add q_direction dummy

scoreboard objectives add q_sneaking minecraft.custom:minecraft.sneak_time
scoreboard objectives add q_timeup minecraft.custom:minecraft.time_since_death

scoreboard objectives add QuarrySlotCount dummy
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

#Lock
scoreboard objectives add q_UUIDMost dummy
scoreboard objectives add q_UUIDLeast dummy

#Dampener
scoreboard objectives add q_d_loop_start dummy
scoreboard objectives add q_d_index dummy
scoreboard objectives add q_d_sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add q_d_current dummy
scoreboard objectives add q_d_result dummy
scoreboard objectives add q_d_timer minecraft.custom:minecraft.time_since_death
scoreboard objectives add q_d_X dummy
scoreboard objectives add q_d_Z dummy
scoreboard objectives add q_d_in dummy
scoreboard objectives add q_d_pre dummy
scoreboard objectives add OwnerOptions trigger
scoreboard objectives add RequestTrigger trigger

#Constants
scoreboard players set #quarry pack_loaded 1
scoreboard players set #quarry q_Age 40
scoreboard players set #quarry QuarrySpeedSize 8
#How many ticks added per ender eye - default 2400 (2 minutes)
scoreboard players set #chunk q_Age 2400
scoreboard players set #lock QuarryCount 0
scoreboard players set #drill qmax_x 1561
scoreboard players set @a q_d_current 0


tellraw @a ["",{"text":"Loaded "},{"text":"[Automated Quarries] v0.9","clickEvent":{"action":"run_command","value":"/trigger QuarryBook"},"hoverEvent":{"action":"show_text","value":"Click here to get the tutorial book"}},{"text":" By RE:Lapis","color":"gray"}]