execute at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{CustomModelData:103,DelEntity:1b,display:{Lore:['{"text":"Deletes when dropped"}']},pages:["[\"\",{\"text\":\"\\n\\n\\n\\nAlloys and Mixes\\n\\n\",\"color\":\"green\",\"bold\":true,\"underlined\":true},{\"text\":\"These will automatically mix together inside the smeltery.\"}]"],title:"Smeltery Recipes: Alloys",author:"Re:Lapis"}},Tags:["t_new_smelt_book"]}
data modify entity @e[type=item,tag=t_new_smelt_book,limit=1] Item.tag.pages append value "[\"\",{\"text\":\"Steel\\n\",\"underlined\":true,\"color\":\"dark_gray\"},{\"text\":\"\\n4 coal + 1 iron\\n= 1 Steel\"}]"
data modify entity @e[type=item,tag=t_new_smelt_book,limit=1] Item.tag.pages append value "[\"\",{\"text\":\"Concrete\\n\",\"underlined\":true,\"color\":\"black\"},{\"text\":\"\\n1 sand + 1 gravel\\n= 2 Concrete\"}]"
execute as @s at @s run function #tinkery_data:smeltery/books/alloysandmixes
tag @e[tag=t_new_smelt_book] remove t_new_smelt_book
scoreboard players set @s TinkeryBook 0
#4x ingot smelt amount over 100% heat.