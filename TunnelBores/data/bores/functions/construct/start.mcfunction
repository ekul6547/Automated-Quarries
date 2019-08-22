# Use different things to summon a new bore
# the following are the allowed modifiers
# use like so: scoreboard players set #bores.construct.fortune const 2
# if no values are specified, then it's a 0 / 1 meaning false / true
# call start.mcfunction to start it, then call create.mcfunction to summon an item at the currenct position
# The item will have a score of bores.age 1 (the only type item to have it) allowing further modification, such as a custom name
# Finish by calling end.mcfunction
# THIS IS ESSENTIAL IF YOU WANT THE BORE TO DROP ITSELF AGAIN

# - #bores.construct.fortune - -1 for silk, 0 for none, 1,2,3,4 for different levels
# - #bores.construct.sponge - sponge water
# - #bores.construct.lava - replace lava with stone / obsidian
# - #bores.construct.tele - teleports items to the starting position of the bore (place on hopper etc..)
# - #bores.construct.bridge - 0 no bridge, 1 is a cobble bridge, 2 is a gravel bridge, 3 is a 5 wide stone bridge, 4 is a 5 wide blue ice bridge
# - #bores.construct.digspeed - the speed which it digs (cannot be less than 1) (how many ticks before it moves or digs, so lower is faster, 20 is 1 second)
# - #bores.construct.movspeed - the amount it moves every time it attempts to move (every digspeed ticks when it doesn't dig)
# - #bores.construct.level - the mining level, 0 - 4 is default, 9 is op blocks liek bedrock and command blocks. See block tags for what CANNOT be mined at that level (cannot be less than 1)
# colour of the bore:
# - #bores.construct.r - red 0 - 255
# - #bores.construct.g - blue 0 - 255
# - #bores.construct.b - green 0 - 255


scoreboard players set #bores.construct.movespeed const 10
scoreboard players set #bores.construct.digspeed const 40
scoreboard players set #bores.construct.level const 1
scoreboard players set #bores.construct.r const 255
scoreboard players set #bores.construct.g const 255
scoreboard players set #bores.construct.b const 255
scoreboard players set #bores.construct.fortune const 0
scoreboard players set #bores.construct.sponge const 0
scoreboard players set #bores.construct.lava const 0
scoreboard players set #bores.construct.tele const 0
scoreboard players set #bores.construct.bridge const 0