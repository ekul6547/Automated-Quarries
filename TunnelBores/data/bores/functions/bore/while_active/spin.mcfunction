execute store result score #bores.dummy const run data get entity @s Pose.LeftArm[0] 100
scoreboard players operation #bores.dummy const += #bores.spinspeed const
execute store result entity @s Pose.LeftArm[0] float 0.01 run scoreboard players get #bores.dummy const
execute store result score #bores.dummy const run data get entity @s Pose.RightArm[0] 100
scoreboard players operation #bores.dummy const -= #bores.spinspeed const
execute store result entity @s Pose.RightArm[0] float 0.01 run scoreboard players get #bores.dummy const