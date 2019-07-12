#
#Smeltery:{
#    Items:[
#        {            
#            TinkeryMat:{
#                id:"coal",
#                Material:"",
#                ToolDur:100,
#                ArmorDur:[0,0,0,0],
#                Addons:[
#                    {id:"",level:0,matbuild:0,next:0}
#                ]
#            },
#            Item:{
#                id:"minecraft:coal",
#                Count:0
#            }
#        }
#    ]
#}
#Done this way to avoid conflicts of materials using the same item
#Change TinkeryMat.id instead of Item.id
execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"coal"}}] run function tinkery_data:smeltery/materials/coal/add
function tinkery_data:smeltery/materials/coal/increase

scoreboard players set @s t_output 1