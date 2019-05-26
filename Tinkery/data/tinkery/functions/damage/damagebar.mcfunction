#t_dum0 - tinkery.durability
#t_dum1 - tinkery.maxDurability
#t_dum2 - item max durability
#t_dum2 - output

scoreboard players set #tinkery const 1000
scoreboard players operation #tinkery t_dum3 = #tinkery t_dum0
scoreboard players operation #tinkery t_dum0 *= #tinkery const

# (itemMaxDur - ((cusDur / cusMaxDur) * itemMaxDur)) + 1
scoreboard players operation #tinkery t_dum0 /= #tinkery t_dum1
scoreboard players operation #tinkery t_dum0 *= #tinkery t_dum2
scoreboard players operation #tinkery t_dum0 /= #tinkery const
scoreboard players operation #tinkery t_dum2 -= #tinkery t_dum0
execute if score #tinkery t_dum3 matches ..1 run scoreboard players add #tinkery t_dum2 1